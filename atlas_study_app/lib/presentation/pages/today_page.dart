import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'No tasks for today!',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              // TODO: Navigate to add task page
            },
            icon: const Icon(Icons.add),
            label: const Text('Add New Task'),
          ),
        ],
      ),
    );
  }
}
