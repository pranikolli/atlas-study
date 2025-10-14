class AppConstants {
  // App Information
  static const String appName = 'Atlas Study';
  static const String appVersion = '1.0.0';
  
  // Course Colors (WCAG-safe palette)
  static const List<String> courseColors = [
    '#1F77B4', // Blue
    '#FF7F0E', // Orange
    '#2CA02C', // Green
    '#D62728', // Red
    '#9467BD', // Purple
    '#8C564B', // Brown
    '#E377C2', // Pink
    '#7F7F7F', // Gray
    '#BCBD22', // Olive
    '#17BECF', // Cyan
  ];
  
  // Task Types
  static const List<String> taskTypes = [
    'assignment',
    'exam',
    'project',
    'reading',
    'study',
    'other',
  ];
  
  // Task Status
  static const List<String> taskStatuses = [
    'todo',
    'in_progress',
    'completed',
    'cancelled',
  ];
  
  // Priority Levels
  static const List<int> priorityLevels = [1, 2, 3, 4, 5];
  
  // Timer Settings
  static const int defaultTimerDuration = 25; // minutes (Pomodoro)
  static const int shortBreakDuration = 5; // minutes
  static const int longBreakDuration = 15; // minutes
  
  // Notification Settings
  static const String reminderIntensityLow = 'low';
  static const String reminderIntensityMedium = 'medium';
  static const String reminderIntensityHigh = 'high';
  
  // Sleep Window Defaults
  static const String defaultSleepStart = '22:00';
  static const String defaultSleepEnd = '08:00';
  
  // Storage Keys
  static const String userTokenKey = 'user_token';
  static const String userRefreshTokenKey = 'user_refresh_token';
  static const String userPreferencesKey = 'user_preferences';
  static const String themeKey = 'theme_mode';
  
  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);
  
  // UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double borderRadius = 12.0;
  static const double smallBorderRadius = 8.0;
}
