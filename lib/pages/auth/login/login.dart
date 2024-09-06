import 'package:farming_app/controllers/auth_controllers.dart';
import 'package:farming_app/pages/auth/registration/complete_registration.dart';
import 'package:farming_app/pages/auth/registration/registration.dart';
import 'package:farming_app/pages/modules/mainwrapper.dart';
import 'package:farming_app/utils/images.dart';
import 'package:farming_app/widgets/custom_button.dart';
import 'package:farming_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' as FontAwesome;
import 'package:get/get.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(kImageLogoNoBackground, width: 100, height: 100),
              const Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Sign in to your account.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50.0),
              CustomTextField(
                FontAwesomeIcons: FontAwesome.FontAwesomeIcons.envelope,
                title: 'Email',
                hintText: 'Email',
                controller: _emailController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                FontAwesomeIcons: FontAwesome.FontAwesomeIcons.lock,
                title: 'Password',
                hintText: 'Password',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Lost my password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              CustomButton(
                onTap: () async {
                  print("On login page 1");
                  try {
                    print("On login page 2");
                    if (_emailController.text != "" &&
                        _passwordController.text != "") {
                      print(
                          'the values ${_emailController.text} ${_passwordController.text} ');
                      await _authenticationController.login(
                          email: _emailController.text.trim(),
                          password: _passwordController.text.trim());
                    } else if (_emailController.text == "") {
                      print('enter value');
                      Get.snackbar('Error', "email is empty",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    } else if (_passwordController.text == "") {
                      Get.snackbar('Error', "password is empty",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    }
                    print("On login page 3");
                  } catch (e) {
                    debugPrint("On login page error $e");
                  }
                },
                widget: Obx(() {
                  return _authenticationController.isLoading.value
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                }),
              ),
              const SizedBox(height: 20.0),
              CustomButton(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/google_logo.png',
                      height: 30,
                    ),
                    const Gap(10.0),
                    const Text(
                      'Login with Google',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              const SizedBox(height: 100.0),
              const Text('You don\'t have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                  )),
              const Gap(10.0),
              CustomButton(
                widget: const Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
