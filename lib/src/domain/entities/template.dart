import 'package:freezed_annotation/freezed_annotation.dart';

import 'competition.dart';

part 'template.freezed.dart';
part 'template.g.dart';

@freezed
class Template with _$Template {
  const factory Template({
    @JsonKey(name: "_id") required String id,
    required String status,
    @Default(false) bool unique,
    Competition? competition,
    String? banner,
    String? name,
    @Default(false) bool bannerUpdatedManually,
  }) = _Template;

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
}
