import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String apiKey = dotenv.env['API_KEY'] ?? 'No exist an api key';
  static String apiUrl = dotenv.env['API_URL'] ?? '127.0.0.1';
}
