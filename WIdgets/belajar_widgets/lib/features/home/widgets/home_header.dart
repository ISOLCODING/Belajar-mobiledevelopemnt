import 'package:flutter/material.dart';
import '../../../core/constants/app_texts.dart';
import '../../../core/utils/widget_helper.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.homeWelcome,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          verticalSpace(8),
          Text(
            AppTexts.homeSubtitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}