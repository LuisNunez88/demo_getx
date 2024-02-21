import 'package:freezed_annotation/freezed_annotation.dart';

part 'prize.freezed.dart';
part 'prize.g.dart';

@freezed
class Prize with _$Prize {
  const factory Prize({
    required String type,
    String? coin,
    String? bet,
    @Default('') String description,
  }) = _Prize;

  factory Prize.fromJson(Map<String, dynamic> json) => _$PrizeFromJson(json);
}
