import 'package:farming_app/controllers/auth_controllers.dart';
import 'package:farming_app/pages/auth/login/login.dart';
import 'package:farming_app/pages/auth/registration/complete_registration.dart';
import 'package:farming_app/utils/images.dart';
import 'package:farming_app/widgets/custom_button.dart';
import 'package:farming_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  List<Step> steps = [
    Step(
      title: const Text('Personel'),
      content: Container(
        color: Colors.blue,
      ),
    ),
    Step(
      title: const Text('Education'),
      content: Container(
        height: 30,
        width: 30,
        color: Colors.blue,
      ),
    ),
    Step(
      title: const Text('Preferences'),
      content: Container(
        color: Colors.blue,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(kImageLogoNoBackground, width: 100, height: 100),
              const Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Create an account to manage your farm',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50.0),
              CustomTextField(
                title: 'Email',
                hintText: 'Email',
                controller: _emailController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Password',
                hintText: 'password',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Confirm password',
                hintText: 'confirm password',
                controller: _confirmPasswordController,
              ),
              const SizedBox(height: 20.0),
              CustomButton(
                onTap: () async {
                  print("On login page 1");
                  try {
                    print("On login page 2");
                   // Email validation regex
                    RegExp emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');

                    if (_emailController.text.isEmpty) {
                      print('enter value');
                      Get.snackbar('Error', "Email is empty",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    } else if (!emailRegex.hasMatch(_emailController.text)) {
                      print('invalid email');
                      Get.snackbar('Error', "Enter a valid email address",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    } else if (_passwordController.text.isEmpty) {
                      print('enter value');
                      Get.snackbar('Error', "Password is empty",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    } else if (_passwordController.text != _confirmPasswordController.text) {
                      print('passwords do not match');
                      Get.snackbar('Error', "Passwords do not match",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    } else {
                      print('the values $_emailController $_passwordController');
                      await _authenticationController.register(
                          email: _emailController.text,
                          password: _passwordController.text);
                    }
                  } catch (e) {
                    print('Error: $e');
                    
                    Get.snackbar('Error', "An error occurred",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.red,
                        colorText: Colors.white);
                  }
                },
                widget: Obx(() {
                  return _authenticationController.isLoading.value
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "Create an account",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                }),
              ),
              const SizedBox(
                  height: 20.0), // Add some space between the buttons
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
                      'Continuer avec Google',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              const SizedBox(height: 100.0),
              const Text('Vous avez déjà un compte?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                  )),
              const Gap(10.0),
              CustomButton(
                widget: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
