import 'package:freezed_annotation/freezed_annotation.dart';

import 'competition.dart';
import 'gradient_template.dart';
import 'mention.dart';
import 'next_match.dart';

part 'penka_template.freezed.dart';
part 'penka_template.g.dart';

@freezed
class PenkaTemplate with _$PenkaTemplate {
  const factory PenkaTemplate({
    @JsonKey(name: "_id") required String id,
    @Default(true) bool outstanding,
    @JsonKey(name: "gradient") GradientTemplate? gradient,
    @Default(false) bool? multiDeporte,
    @Default(false) bool published,
    @Default(false) bool isPrivate,
    @Default(false) bool isStarred,
    @Default(false) bool unique,
    @Default('unique') String? type,
    @Default('N/A') String name,
    String? banner,
    DateTime? startDate,
    DateTime? endDate,
    List<Mention>? mentions,
    NextMatch? nextMatch,
    Competition? competition,
  }) = _PenkaTemplate;

  factory PenkaTemplate.fromJson(Map<String, dynamic> json) =>
      _$PenkaTemplateFromJson(json);
}
