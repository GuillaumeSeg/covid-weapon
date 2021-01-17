
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_world.freezed.dart';

@freezed
abstract class VaccinationWorld with _$VaccinationWorld {
  const factory VaccinationWorld({
    @required int total,
    @required double totalPercent,
    @required DateTime date,
  }) = _VaccinationWord;
}