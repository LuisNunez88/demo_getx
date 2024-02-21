import 'package:freezed_annotation/freezed_annotation.dart';

import 'competition.dart';
import 'dates.dart';
import 'scores.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class Match with _$Match {
  const factory Match({
    @JsonKey(name: "_id") required String id,
    required String status,
    Competition? competition,
    Dates? dates,
    Scores? scores,
    int? phase,
    String? stage,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}
