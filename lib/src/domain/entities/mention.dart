import 'package:freezed_annotation/freezed_annotation.dart';

import 'mention_option.dart';

part 'mention.freezed.dart';
part 'mention.g.dart';

@freezed
class Mention with _$Mention {
  const factory Mention({
    @JsonKey(name: "_id") required String id,
    required List<MentionOption> options,
    String? status,
    @Default(0) int? points,
    String? question,
    String? questionEn,
    String? type,
  }) = _Mention;

  factory Mention.fromJson(Map<String, dynamic> json) =>
      _$MentionFromJson(json);
}
