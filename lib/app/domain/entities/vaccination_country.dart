import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'vaccination_entry.dart';

part 'vaccination_country.freezed.dart';

@freezed
abstract class VaccinationCountry with _$VaccinationCountry {
  const factory VaccinationCountry({
    @required String name,
    @required List<VaccinationEntry> entries,
  }) = _VaccinationCountry;
}