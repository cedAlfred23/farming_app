import 'package:farming_app/controllers/auth_controllers.dart';
import 'package:farming_app/pages/modules/mainwrapper.dart';
import 'package:farming_app/widgets/custom_button.dart';
import 'package:farming_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_selector/flutter_country_selector.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' as FontAwesome;
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CompleteRegistration extends StatefulWidget {
  const CompleteRegistration({super.key});

  @override
  State<CompleteRegistration> createState() => _CompleteRegistrationState();
}

class _CompleteRegistrationState extends State<CompleteRegistration> {
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  String country = '';
  String _selectedGender = 'Male'; // Default value
  NavigationType navigationType = NavigationType.page;
  Widget buildSelectorPage() {
    return CountrySelector.page(
      onCountrySelected: (country) => Navigator.of(context).pop(country),
      // favoriteCountries: containsFavorite ? [IsoCode.US] : [],
      // showDialCode: showDialCode,
    );
  }

  Widget buildSelectorSheet() {
    return CountrySelector.sheet(
      onCountrySelected: (countrySelected) {
        print(countrySelected);
        var code = CountrySelectorLocalization.of(context)
            ?.countryName(countrySelected);
        print(code);
        Navigator.of(context).pop(country);

        setState(() {
          // country = ;
        });
      },
      addFavoritesSeparator: true,
      // favoriteCountries: containsFavorite ? [IsoCode.US] : [],
      // showDialCode: showDialCode,
    );
  }

  show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.25,
        maxChildSize: 0.85,
        expand: false,
        builder: (context, scrollController) {
          return buildSelectorSheet();
        },
      ),
      isScrollControlled: true,
    );
  }

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
                showIcon: false,
                title: 'First Name',
                hintText: 'first name',
                controller: _firstNameController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                showIcon: false,
                title: 'Last name',
                hintText: 'last name',
                controller: _lastNameController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                showIcon: false,
                title: 'Phone number',
                hintText: 'Phone number',
                controller: _phoneNumberController,
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                showIcon: false,
                title: 'Address',
                hintText: 'Address',
                controller: _addressController,
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: () => show(context),
                child: CustomTextField(
                  showIcon: false,
                  title: 'Postal Code',
                  hintText: 'Postal code',
                  controller: _postalCodeController,
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      // constraints: const BoxConstraints(maxWidth: 600),
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                  onPressed: () => show(context),
                                  child: const Text('Show Country selector')),
                              Text(
                                country,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Select Gender',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Male'),
                          leading: Radio<String>(
                            value: 'Male',
                            groupValue: _selectedGender,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedGender = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Female'),
                          leading: Radio<String>(
                            value: 'Female',
                            groupValue: _selectedGender,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedGender = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
                widget: Obx(() {
                  return _authenticationController.isLoading.value
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "Save and continue",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                }),
                onTap: () async {
                  print("On login page 1");
                  try {
                    print("On login page 2");
                    if (_firstNameController.text != "" &&
                        _lastNameController.text != "") {
                      await _authenticationController.updateProfile(
                        data: {
                        "first_name": _firstNameController.text,
                        "last_name": _lastNameController.text,
                        "phone_number": _phoneNumberController.text,
                        "address": _addressController.text,
                        "postal_code": _postalCodeController.text,
                      });
                    } else if (_firstNameController.text == "" ||
                        _lastNameController.text == "") {
                      print('enter value');
                      Get.snackbar(
                          'Error', "first and last name shouldn\'n be empty",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    }
                    print("On login page 3");
                  } catch (e) {
                    debugPrint("On login page error $e");
                  }
                },
                // onTap: () {
                //   showDialog(
                //     context: context,
                //     builder: (context) {
                //       return AlertDialog(
                //         title: const Text('Success'),
                //         content: const Text(
                //             'Your account has been created successfully'),
                //         actions: [
                //           TextButton(
                //             onPressed: () {
                //               Navigator.pushReplacement(
                //                 context,
                //                 MaterialPageRoute(
                //                   builder: (context) => const MainWrapper(),
                //                 ),
                //               );
                //             },
                //             child: const Text('OK'),
                //           ),
                //         ],
                //       );
                //     },
                //   );
                // },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum NavigationType {
  page,
  dialog,
  draggableBottomSheet,
  modalBottomSheet,
  bottomSheet,
}

class NavigationTypeDropdown extends StatelessWidget {
  final Function(NavigationType) onChange;
  final NavigationType value;
  const NavigationTypeDropdown({
    super.key,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<NavigationType>(
      value: value,
      onChanged: (NavigationType? value) {
        if (value != null) {
          onChange(value);
        }
      },
      items: const [
        DropdownMenuItem(
          value: NavigationType.page,
          child: Text('Page'),
        ),
        DropdownMenuItem(
          value: NavigationType.dialog,
          child: Text('Dialog'),
        ),
        DropdownMenuItem(
          value: NavigationType.draggableBottomSheet,
          child: Text('Draggable modal sheet'),
        ),
        DropdownMenuItem(
          value: NavigationType.modalBottomSheet,
          child: Text('Modal sheet'),
        ),
        DropdownMenuItem(
          value: NavigationType.bottomSheet,
          child: Text('Bottom sheet'),
        ),
      ],
    );
  }
}
