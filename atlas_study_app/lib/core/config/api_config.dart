class ApiConfig {
  // API Configuration
  static const String baseUrl = 'http://localhost:8000/api/v1';
  static const String apiKey = 'your-api-key';
  
  // Endpoints
  static const String authEndpoint = '/auth';
  static const String tasksEndpoint = '/tasks';
  static const String coursesEndpoint = '/courses';
  static const String sessionsEndpoint = '/sessions';
  static const String userEndpoint = '/user';
  
  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);
  
  // Headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}
