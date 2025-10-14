import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class MonthPage extends StatelessWidget {
  const MonthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Month View',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          const Text(
            'Coming soon! This will show your tasks for the month.',
            style: TextStyle(color: AppTheme.darkGray),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
