import 'package:dio/dio.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';
import 'src/config/constants/enviroment.dart';
import 'src/data/datasources/remote/helpers/http_client.dart';
import 'src/inject_repositories.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');

  final HttpClient http = HttpClient(
    dio: Dio(BaseOptions(
      baseUrl: Environment.apiUrl,
      headers: {'penka-api-key': Environment.apiKey},
    )),
    logsEnabled: true,
  );
  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 15));

  await injectRepositories(
    http: http,
  );
  runApp(const App());
}
