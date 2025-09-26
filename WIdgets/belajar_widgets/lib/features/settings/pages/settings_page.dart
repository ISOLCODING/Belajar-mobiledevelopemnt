import 'package:flutter/material.dart';
import '../../../core/constants/app_texts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.settingsTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile.adaptive(
            title: const Text(AppTexts.settingsDarkMode),
            secondary: const Icon(Icons.dark_mode_outlined),
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (value) {
              // Note: Theme switching logic should be handled with a state manager.
              // This is just a UI representation.
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text(AppTexts.settingsNotifications),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.language_outlined),
            title: const Text(AppTexts.settingsLanguage),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}