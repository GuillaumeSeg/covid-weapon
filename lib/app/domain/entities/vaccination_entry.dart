import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccination_entry.freezed.dart';

@freezed
abstract class VaccinationEntry with _$VaccinationEntry {
  const factory VaccinationEntry({
    @required DateTime date,
    @required int totalVaccinated,
  }) = _VaccinationEntry;
}