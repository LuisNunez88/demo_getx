import 'package:freezed_annotation/freezed_annotation.dart';

part 'mention_option.freezed.dart';
part 'mention_option.g.dart';

@freezed
class MentionOption with _$MentionOption {
  const factory MentionOption({
    @JsonKey(name: "_id") required String id,
    String? description,
    String? flag,
    int? points,
  }) = _MentionOption;

  factory MentionOption.fromJson(Map<String, dynamic> json) =>
      _$MentionOptionFromJson(json);
}
