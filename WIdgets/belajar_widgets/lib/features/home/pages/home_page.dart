import 'package:belajar_widgets/core/utils/widget_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_texts.dart';
 // Pastikan import ini benar
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/cards/info_card.dart';
import '../controllers/home_controller.dart';
import '../widgets/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.homeTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeHeader(),
            // PANGGILAN YANG BENAR: Langsung panggil fungsinya
            verticalSpace(24),
            const InfoCard(
              title: AppTexts.homeCardTitle,
              content: AppTexts.homeCardContent,
              leading: Icon(Icons.info_outline, size: 40),
              onTap: null, subtitle: '', // No action
            ),
            // PANGGILAN YANG BENAR: Langsung panggil fungsinya
            verticalSpace(16),
            Consumer<HomeController>(
              builder: (context, controller, child) {
                return PrimaryButton(
                  text: AppTexts.buttonSubmit,
                  onPressed: () => controller.fetchData(),
                  isLoading: controller.isLoading, label: '',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}