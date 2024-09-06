import 'dart:convert';

import 'package:farming_app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class InventoryController extends GetxController {
  var isLoading = false.obs;

  Future postInventoryCategory(
      {required String name, String? description}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');
      var response = await http
          .post(Uri.parse('${baseUrl}inventory/categories/'), headers: {
        'Accept': 'application/json',
        'authorization': 'Bearer $token'
      }, body: {
        'name': name,
        'description': description ?? ''
      });

      if (response.statusCode == 200) {
        print("On auth page 3 here");

        print(response.body);
        isLoading.value = false;
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

  Future getInventoryCategory() async {
    return;
  }

  Future getInventoryCategoryById({
    required String email,
    required String password,
  }) async {}

  Future postInventoryItem(
      {required String name,
      required String category,
      required String quantity,
      required String price,
      required String description}) async {
    try {
       SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');
      var response =
          await http.post(Uri.parse('${baseUrl}inventory/items/'), headers: {
        'Accept': 'application/json',
        'authorization': 'Bearer $token'
      }, body: {
        'name': name,
        'category': category,
        'quantity': quantity,
        'price': price,
        'description': description
      });

      if (response.statusCode == 200) {
        print("On auth page 3 here");

        print(response.body);
        isLoading.value = false;
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

  Future getLiveStock() async {
    try {
      isLoading.value = true;
       SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');
      var response = await http
          .get(Uri.parse('${baseUrl}management/livestock/'), headers: {
        'Accept': 'application/json',
        'authorization': 'Bearer $token',
      });
      isLoading.value = false;
      print('Response for getLiveestock ${response.body}');
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }
}
