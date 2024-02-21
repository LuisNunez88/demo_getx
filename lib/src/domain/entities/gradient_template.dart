import 'package:freezed_annotation/freezed_annotation.dart';

import 'design.dart';

part 'gradient_template.freezed.dart';
part 'gradient_template.g.dart';

@freezed
class GradientTemplate with _$GradientTemplate {
  const factory GradientTemplate({
    required Design? local,
    required Design? visit,
  }) = _GradientTemplate;

  factory GradientTemplate.fromJson(Map<String, dynamic> json) =>
      _$GradientTemplateFromJson(json);
}
