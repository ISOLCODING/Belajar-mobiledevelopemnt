import 'package:flutter/material.dart';
import '../../../core/constants/app_texts.dart';
import '../../../core/utils/widget_helper.dart';
import '../widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.profileTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileCard(
              name: AppTexts.profileName,
              email: AppTexts.profileEmail,
              joinedDate: AppTexts.profileJoined,
            ),
            verticalSpace(24),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit Profil'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Keluar'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}