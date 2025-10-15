import 'package:flutter_dotenv/flutter_dotenv.dart';

/// A singleton class to manage environment variable configurations
class Environment {
  Environment._(); // Private constructor to prevent instantiation
  static final Environment _instance = Environment._();
  static Environment get instance => _instance;

  String get environment => String.fromEnvironment('ENVIRONMENT', defaultValue: 'development');

  String get baseApiUrl => dotenv.env['BASE_API_URL'] ?? '';
  String get otherEnvironmentVariable => dotenv.env['OTHER_ENVIRONMENT_VARIABLE'] ?? '';
  String get pruebaVariable => dotenv.env['PRUEBA_VARIABLE'] ?? '';
}
