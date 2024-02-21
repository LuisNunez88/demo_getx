import 'package:freezed_annotation/freezed_annotation.dart';

import 'team.dart';

part 'score_location.freezed.dart';
part 'score_location.g.dart';

@freezed
class ScoreLocation with _$ScoreLocation {
  const factory ScoreLocation({
    required Team team,
    @Default(0) int? score,
  }) = _ScoreLocation;

  factory ScoreLocation.fromJson(Map<String, dynamic> json) =>
      _$ScoreLocationFromJson(json);
}
