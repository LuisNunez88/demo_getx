import 'package:freezed_annotation/freezed_annotation.dart';

part 'design.freezed.dart';
part 'design.g.dart';

@freezed
class Design with _$Design {
  const factory Design({
    String? gradientString,
    String? colorLeft,
    String? colorRight,
  }) = _Design;

  factory Design.fromJson(Map<String, dynamic> json) => _$DesignFromJson(json);
}
