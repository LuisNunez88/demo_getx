import 'package:freezed_annotation/freezed_annotation.dart';

part 'competition.freezed.dart';
part 'competition.g.dart';

@freezed
class Competition with _$Competition {
  const factory Competition({
    @JsonKey(name: "_id") required String id,
    required String name,
    required String flag,
    String? alias,
    String? color,
  }) = _Competition;

  factory Competition.fromJson(Map<String, dynamic> json) =>
      _$CompetitionFromJson(json);
}
