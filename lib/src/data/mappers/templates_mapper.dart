import '../../domain/entities/penka_template.dart';

class TemplateMapper {
  static List<PenkaTemplate> templatesFromJson(List<dynamic> str) =>
      List<PenkaTemplate>.from(str.map((x) => PenkaTemplate.fromJson(x)));
}
