import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/theme/app_theme.dart';
import 'core/providers/auth_providers.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const AtlasStudyApp(),
    ),
  );
}

class AtlasStudyApp extends ConsumerWidget {
  const AtlasStudyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return MaterialApp(
      title: 'Atlas Study',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light, // Force light theme for black/white design
      home: authState.when(
        data: (user) => user != null ? const HomePage() : const LoginPage(),
        loading: () => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        error: (error, stack) => const LoginPage(),
      ),
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
