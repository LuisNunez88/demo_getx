import 'package:freezed_annotation/freezed_annotation.dart';

part 'maker.freezed.dart';
part 'maker.g.dart';

@freezed
class Maker with _$Maker {
  const factory Maker({
    @JsonKey(name: "_id") required String id,
    String? googleId,
    @Default('') String fullname,
    @Default('') String username,
    String? email,
    String? profilePicture,
    @Default(false) bool partner,
  }) = _Maker;

  factory Maker.fromJson(Map<String, dynamic> json) => _$MakerFromJson(json);
}
