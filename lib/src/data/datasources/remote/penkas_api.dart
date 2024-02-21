import '../../../config/constants/end_point.dart';
import '../../../domain/entities/penka_public.dart';
import '../../../domain/entities/penka_template.dart';
import '../../mappers/penkas_mapper.dart';
import '../../mappers/templates_mapper.dart';
import 'helpers/http_client.dart';

class PenkasAPI {
  final HttpClient _http;
  PenkasAPI(this._http);

  Future<HttpResponse<List<PenkaPublic>>> getPenkas() async {
    return await _http.request<List<PenkaPublic>>(
      EndPoint.getPublicPenkas,
      method: "GET",
      parser: (resp) {
        List<PenkaPublic> temp = PenkasMapper.penkasFromJson(resp['data']);
        return temp;
      },
    );
  }

  Future<HttpResponse<List<PenkaTemplate>>> getTemplates() async {
    return await _http.request<List<PenkaTemplate>>(
      EndPoint.getTemplates,
      method: "GET",
      parser: (resp) {
        List<PenkaTemplate> temp =
            TemplateMapper.templatesFromJson(resp['data']);
        return temp;
      },
    );
  }
}
