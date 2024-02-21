import 'package:freezed_annotation/freezed_annotation.dart';

import 'team.dart';

part 'next_match.freezed.dart';
part 'next_match.g.dart';

@freezed
class NextMatch with _$NextMatch {
  const factory NextMatch({
    @JsonKey(name: "_id") required String id,
    required Team home,
    required Team visit,
  }) = _NextMatch;

  factory NextMatch.fromJson(Map<String, dynamic> json) =>
      _$NextMatchFromJson(json);
}
