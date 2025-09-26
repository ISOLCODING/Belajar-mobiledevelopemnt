import 'package:flutter/material.dart';
import '../../../core/utils/widget_helper.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String joinedDate;

  const ProfileCard({
    super.key,
    required this.name,
    required this.email,
    required this.joinedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=a042581f4e29026704d'),
          ),
          verticalSpace(16),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          verticalSpace(8),
          Text(
            email,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          verticalSpace(4),
          Text(
            joinedDate,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}