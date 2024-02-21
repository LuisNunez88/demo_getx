import 'package:freezed_annotation/freezed_annotation.dart';

import 'score_location.dart';

part 'scores.freezed.dart';
part 'scores.g.dart';

@freezed
class Scores with _$Scores {
  const factory Scores({
    required ScoreLocation home,
    required ScoreLocation visit,
  }) = _Scores;

  factory Scores.fromJson(Map<String, dynamic> json) => _$ScoresFromJson(json);
}
