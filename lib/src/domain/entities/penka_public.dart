import 'package:freezed_annotation/freezed_annotation.dart';

import 'dates.dart';
import 'maker.dart';
import 'match.dart';
import 'prize.dart';
import 'template.dart';

part 'penka_public.freezed.dart';
part 'penka_public.g.dart';

@freezed
class PenkaPublic with _$PenkaPublic {
  const factory PenkaPublic({
    @JsonKey(name: "_id") required String id,
    String? nameEn,
    String? banner,
    bool? multisport,
    DateTime? deletedAt,
    String? status,
    bool? isPublic,
    String? name,
    String? description,
    String? bannerId,
    // List<dynamic>? participants,
    // List<dynamic>? permissions,
    // List<dynamic>? paid,
    int? limit,
    Dates? dates,
    Prize? prize,
    Template? template,
    List<Match>? matches,
    String? type,
    String? code,
    List<Prize>? userPrizes,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    bool? isPublicActive,
    Maker? maker,
    int? totalParticipants,
    int? totalMatches,
  }) = _PenkaPublic;

  factory PenkaPublic.fromJson(Map<String, dynamic> json) =>
      _$PenkaPublicFromJson(json);
}
