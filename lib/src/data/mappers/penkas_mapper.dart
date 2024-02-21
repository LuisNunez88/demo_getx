import '../../domain/entities/penka_public.dart';

class PenkasMapper {
  static List<PenkaPublic> penkasFromJson(List<dynamic> str) =>
      List<PenkaPublic>.from(str.map((x) => PenkaPublic.fromJson(x)));
}
