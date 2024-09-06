import 'package:farming_app/controllers/auth_controllers.dart';
import 'package:farming_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());
  bool _isDarkTheme = false;
  bool _notificationsEnabled = true;
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Theme Toggle
          ListTile(
            title: const Text('Dark Theme'),
            trailing: Switch(
              value: _isDarkTheme,
              onChanged: (bool value) {
                setState(() {
                  _isDarkTheme = value;
                });
              },
            ),
          ),
          const Divider(),

          // Notification Toggle
          ListTile(
            title: const Text('Enable Notifications'),
            trailing: Switch(
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
          ),
          const Divider(),

          // Language Dropdown
          ListTile(
            title: const Text('Language'),
            trailing: DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: <String>['English', 'Spanish', 'French', 'German']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          const Divider(),

          // Account Section
          ListTile(
            title: const Text('Account'),
            onTap: () {
              // Navigate to account settings page
            },
          ),
          const Divider(),
          Gap(30),
          CustomButton(
            color: Colors.red,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Gap(10.0),
                    const Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () async {
                  await _authenticationController.logout();
                },
              ),
        ],
      ),
    );
  }
}