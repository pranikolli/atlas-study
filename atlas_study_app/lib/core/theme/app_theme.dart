import 'package:flutter/material.dart';

/// Atlas Study App Theme
/// Black and white design with colored course chips only
class AppTheme {
  // Color palette for course chips (WCAG-safe)
  static const List<Color> courseColors = [
    Color(0xFF1F77B4), // Blue
    Color(0xFFFF7F0E), // Orange
    Color(0xFF2CA02C), // Green
    Color(0xFFD62728), // Red
    Color(0xFF9467BD), // Purple
    Color(0xFF8C564B), // Brown
    Color(0xFFE377C2), // Pink
    Color(0xFF7F7F7F), // Gray
    Color(0xFFBCBD22), // Olive
    Color(0xFF17BECF), // Cyan
  ];

  // Black and white theme
  static const Color primaryBlack = Color(0xFF000000);
  static const Color primaryWhite = Color(0xFFFFFFFF);
  static const Color lightGray = Color(0xFFF5F5F5);
  static const Color mediumGray = Color(0xFFE0E0E0);
  static const Color darkGray = Color(0xFF757575);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      
      // Color scheme
      colorScheme: const ColorScheme.light(
        primary: primaryBlack,
        onPrimary: primaryWhite,
        secondary: darkGray,
        onSecondary: primaryWhite,
        surface: primaryWhite,
        onSurface: primaryBlack,
        background: primaryWhite,
        onBackground: primaryBlack,
        error: Color(0xFFD62728),
        onError: primaryWhite,
      ),
      
      // App bar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryWhite,
        foregroundColor: primaryBlack,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: primaryBlack,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      
      // Card theme
      cardTheme: CardThemeData(
        color: primaryWhite,
        elevation: 2,
        shadowColor: primaryBlack.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: mediumGray, width: 1),
        ),
      ),
      
      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlack,
          foregroundColor: primaryWhite,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryBlack,
          side: const BorderSide(color: primaryBlack),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      
      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: mediumGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryBlack, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      
      // Text theme
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: primaryBlack,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: primaryBlack,
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: primaryBlack,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: primaryBlack,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: primaryBlack,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: primaryBlack,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: primaryBlack,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: primaryBlack,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: darkGray,
          fontSize: 12,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    // For now, return the same as light theme since we're using black/white design
    return lightTheme;
  }
}
