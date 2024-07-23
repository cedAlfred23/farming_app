import 'package:farming_app/pages/auth/login/login.dart';
import 'package:farming_app/pages/modules/mainwrapper.dart';
import 'package:farming_app/utils/images.dart';
import 'package:farming_app/widgets/custom_button.dart';
import 'package:farming_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CompleteRegistration extends StatefulWidget {
  const CompleteRegistration({super.key});

  @override
  State<CompleteRegistration> createState() => _CompleteRegistrationState();
}

class _CompleteRegistrationState extends State<CompleteRegistration> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Complete your registration',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Finish setting up your account',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50.0),
              CustomTextField(
                title: 'First Name',
                hintText: 'first name',
                controller: _emailController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Last name',
                hintText: 'last name',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Phone number',
                hintText: 'Phone number',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Date of birth',
                hintText: 'Date of birth',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Gender',
                hintText: 'Gender',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Address',
                hintText: 'Address',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Country',
                hintText: 'Country',
                controller: _passwordController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                title: 'Postal Code',
                hintText: 'Postal Code',
                controller: _passwordController,
              ),
              // const SizedBox(height: 20.0),
              // CustomButton(
              //   onTap: () {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const LoginScreen(),
              //       ),
              //     );
              //   },
              //   widget: const Text(
              //     'Create an account',
              //     style: TextStyle(
              //       fontSize: 18,
              //       color: Colors.white,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),

              // const SizedBox(
              //     height: 20.0), // Add some space between the buttons
              // CustomButton(
              //   widget: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Image.asset(
              //         'assets/icons/google_logo.png',
              //         height: 30,
              //       ),
              //       const Gap(10.0),
              //       const Text(
              //         'Continuer avec Google',
              //         style: TextStyle(
              //             color: Colors.white, fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              //   onTap: () {},
              // ),
              const Gap(10.0),
              CustomButton(
                widget: const Text(
                  'Save and continue',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainWrapper()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
