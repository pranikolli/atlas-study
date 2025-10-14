import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class WeekPage extends StatelessWidget {
  const WeekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Week View',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          const Text(
            'Coming soon! This will show your tasks for the week.',
            style: TextStyle(color: AppTheme.darkGray),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
