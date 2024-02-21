import 'enviroment.dart';

abstract class EndPoint {
  static final String _baseUrl = Environment.apiUrl;
  static final String getTemplates = "$_baseUrl/template/available";
  static final String getPublicPenkas = "$_baseUrl/penka/public";
}
