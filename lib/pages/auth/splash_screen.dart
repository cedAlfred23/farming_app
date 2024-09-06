import 'dart:convert';

import 'package:farming_app/models/user/user_model.dart';
import 'package:farming_app/pages/auth/login/login.dart';
import 'package:farming_app/pages/auth/registration/complete_registration.dart';
import 'package:farming_app/pages/modules/mainwrapper.dart';
import 'package:farming_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ckeck_session();
  }

  void ckeck_session() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');

      var userStoredString = prefs.getString('user') ?? '';

      if (token == null || token.isEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      } else {
        if (userStoredString.isNotEmpty) {
          Map<String, dynamic> userMap = jsonDecode(userStoredString);

          // Step 3: Convert the Map to a User object
          User userM = User.fromJson(userMap);

          // Step 4: Access the attributes of the User object
          print('User ID2: ${userM.id}');
          print('Email2: ${userM.email}');
          print('Is Active2: ${userM.is_active}');
          print('First Name2: ${userM.first_name}');
          print('Last Name2: ${userM.last_name}');

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );

          if (userM.first_name != '') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MainWrapper()),
            );
          } else
            (Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const CompleteRegistration()),
            ));
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainWrapper()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          kImageLogo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
