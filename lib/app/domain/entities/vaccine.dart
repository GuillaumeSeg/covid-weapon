import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccine.freezed.dart';

@freezed
abstract class Vaccine with _$Vaccine {
  const factory Vaccine({
    @required String name,
    @required String manufacturer,
    @required String status,
    @required String type,
    @required String origin,
    @required String efficiency,
    @required String conservation,
    @required String doses,
    @required String url,
  }) = _Vaccine;
}