import 'dart:convert';

import 'package:farming_app/models/user/user_model.dart';
import 'package:farming_app/pages/auth/login/login.dart';
import 'package:farming_app/pages/auth/splash_screen.dart';
import 'package:farming_app/pages/modules/dashboard/home_page.dart';
import 'package:farming_app/pages/modules/mainwrapper.dart';
import 'package:farming_app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationController extends GetxController {
  var isLoading = false.obs;
  RxString token = ''.obs;
  final box = GetStorage();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  Future login({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;
    print(emailController.text);
    print(passwordController.text);

    Future<void> saveToken(String token, int id, String first_name,
        String last_name, String username, String profile) async {
      final SharedPreferences _preferences =
          await SharedPreferences.getInstance(); // Await initialization

      this.token.value = token;
      print(token);
      box.write('token', token);

      // Save to SharedPreferences
      await _preferences.setString('token', token);
      await _preferences.setInt('id', id);
      await _preferences.setString('first_name', first_name);
      await _preferences.setString('last_name', last_name);
      await _preferences.setString('username', username);
      await _preferences.setString('profile', profile);
    }

    Future<void> saveTokenupdated(
        Map<String, dynamic> data, String token) async {
      // Convert user data to JSON string
      var userData = {
        'id': data['id'] ?? '',
        'farm_id': data['farm_id'] ?? '',
        'last_login': data['last_login'] ?? '',
        'date_joined': data['date_joined'] ?? '',
        'email': data['email'] ?? '',
        'first_name': data['first_name'] ?? '',
        'last_name': data['last_name'] ?? '',
        'profile_picture': data['profile_picture'] ?? '',
        'phone_number': data['phone_number'] ?? '',
        'address': data['address'] ?? '',
        'city': data['city'] ?? '',
        'state_province': data['state_province'] ?? '',
        'country': data['country'] ?? '',
        'postal_code': data['postal_code'] ?? ''
      };

      // Convert the userData map to a User object
      User user = User.fromJson(userData);

      // Store the token and serialized user JSON string in SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);

      // Step 1: Convert the User object to JSON string
      String userJsonString = jsonEncode(user.toJson());
      prefs.setString("user", userJsonString);

      // Retrieve the user data from SharedPreferences
      var userStoredString = prefs.getString('user') ?? '';

      if (userStoredString.isNotEmpty) {
        // Step 2: Decode the JSON string into a Map
        Map<String, dynamic> userMap = jsonDecode(userStoredString);

        // Step 3: Convert the Map to a User object
        User userM = User.fromJson(userMap);

        // Step 4: Access the attributes of the User object
        print('User ID: ${userM.id}');
        print('Email: ${userM.email}');
        print('Is Active: ${userM.is_active}');
        print('First Name: ${userM.first_name}');
        print('Last Name: ${userM.last_name}');
        // Access other attributes similarly...
      } else {
        print('No user data found in local storage');
      }

      // prefs.setInt('userId', data['id']);
      // print("the user id is ${data['id']}");
      // print("the user token is ${data['token']}");
      // print("the username id is ${data['username']}");
      // print("the country id is ${data['country']}");
      return;
    }

    try {
      print("On auth page 1 here");
      var data = {
        'email': email.toString(),
        'password': password.toString(),
      };

      var response =
          await http.post(Uri.parse('${baseUrl}auth/get-token/'), 
          headers: {
        'Accept': 'application/json',
      }, body: {
        'email': email.toString(),
        'password': password.toString(),
      });

      if (response.statusCode == 200) {
        print("On auth page 3 here");

        print(response.body);
        isLoading.value = false;
        token.value = json.decode(response.body)['access'];
        // var user = json.decode(response.body)['0'];
        // print("The user is $user");
        print('token is ${json.decode(response.body)['access']}');
        String tokenU = json.decode(response.body)['access'];
        // String user_name = json.decode(response.body)['user']['username'];
        box.write('token', token.value);
        print("On auth page 4");
        var userResponse = await http.get(
          Uri.parse('${baseUrl}account/user/'),
          headers: {
            'Accept': 'application/json',
            'authorization': 'Bearer $tokenU'
          },
        );

        print('the user is ${userResponse.body}');
        saveTokenupdated(jsonDecode(userResponse.body), token.value);
        print("On auth page 5 ${jsonDecode(userResponse.body)}");
        print("On auth page 6");

        // if(user.city == null || user.city == ""){
        //   Get.offAll(() => const MainWrapper());

        // } else {
        Get.offAll(() => const SplashScreen());
        // }
        print("On auth page 7");
      } else {
        Get.snackbar('Error', json.decode(response.body)['message'],
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white);
        isLoading.value = false;
        debugPrint(json.encode(response.body));
      }
    } catch (e) {
      Get.snackbar('Error', json.decode(e.toString())['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      isLoading.value = false;
      debugPrint(json.encode(e.toString()));
    }
  }

  Future GoogleLogin({
    required String email,
    required String password,
  }) async {
    print(emailController.text);
    print(passwordController.text);
  }

  Future register({
    required String email,
    required String password,
  }) async {
    print(emailController.text);
    print(passwordController.text);
    isLoading.value = true;

    try {
      print("On auth page 1 here");
      var data = {
        'email': email.toString(),
        'password': password.toString(),
      };

      var response = await http
          .post(Uri.parse('${baseUrl}account/user/register/'), headers: {
        'Accept': 'application/json',
      }, body: {
        'email': email.toString(),
        'password': password.toString(),
      });

      print(response.body);
      if (response.statusCode == 201) {
        print("On auth page 3 here");

        print(response.body);
        isLoading.value = false;

        print('This is the data $data');

        print("On auth page 5");
        Get.offAll(() => const HomePage());
      } else {

        Get.snackbar('Error', response.body,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white);
        isLoading.value = false;
        debugPrint(json.encode(response.body));
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', json.decode(e.toString())['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      debugPrint(json.encode(e.toString()));
    }
  }

  Future forgotPassword() async {
    print(emailController.text);
  }

  Future resetPassword() async {
    print(emailController.text);
    print(passwordController.text);
  }

  Future changePassword() async {
    print(emailController.text);
    print(passwordController.text);
  }

  Future updateProfile({required Object data}) async {
    isLoading.value = true;
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
     var token = prefs.getString('token');
     print(token);
      var response =
          await http.patch(Uri.parse('${baseUrl}account/user/'),
              headers: {
                'Accept': 'application/json',
                'authorization': 'Bearer $token'
              },
              body: data);
      if (response.statusCode == 200) {
        Get.offAll(() => const MainWrapper());
      Get.snackbar('Error', response.body,
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      isLoading.value = false;
      debugPrint(json.encode(response.body));
       isLoading.value = false;
      } else {
        Get.snackbar('Error', response.body,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white);
        isLoading.value = false;
        debugPrint(json.encode(response.body));
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', json.decode(e.toString())['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      debugPrint(json.encode(e.toString()));
    }
  }

  Future deleteAccount() async {
    print(emailController.text);
    print(passwordController.text);
  }

  Future logout() async {
    Future<void> deleteToken() async {
      final SharedPreferences preferences =
          await SharedPreferences.getInstance();

      await preferences.remove('token');
      await preferences.remove('name');
      await preferences.remove('username');
    }

    Future<void> clearUserData() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.clear(); // Clear all data in SharedPreferences
    }

    try {
      // Delete token-related data
      await deleteToken();

      // Clear user data
      await clearUserData();

      // Sign out from Firebase
      // await FirebaseAuth.instance.signOut();

      // Update loading status if applicable
      isLoading.value = false;

      // Clear token data from some box
      box.write('token', '');

      // Navigate to the login page
      Get.offAll(() => const LoginScreen());

      // Return token value if needed
      // return token.value;
    } catch (e) {
      isLoading.value = false;
      // Handle any errors that occur during logout
      print('Error during logout: $e');
      // You may choose to handle the error differently based on your requirements
    }
  }

  Future verifyEmail() async {
    print(emailController.text);
    print(passwordController.text);
  }
}
