import 'package:covid_weapon/app/domain/entities/vaccine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccine_dto.freezed.dart';

@freezed
abstract class VaccineDto with _$VaccineDto {
  const factory VaccineDto({
    @required String name,
    @required String manufacturer,
    @required String status,
    @required String type,
    @required String origin,
    @required String efficiency,
    @required String conservation,
    @required String doses,
    @required String url,
  }) = _VaccineDto;

  factory VaccineDto.fromJson(Map<String, dynamic> json) {
    return VaccineDto(
      name: json['name'] as String,
      manufacturer: json['manufacturer'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      origin: json['origin'] as String,
      efficiency: json['efficiency'] as String,
      conservation: json['conservation'] as String,
      doses: json['doses'] as String,
      url: json['link'] as String,
    );
  }
}

extension VaccineDtoX on VaccineDto {
  Vaccine toDomain() {
    return Vaccine(
      name: name,
      manufacturer: manufacturer,
      status: status,
      type: type,
      origin: origin,
      efficiency: efficiency,
      conservation: conservation,
      doses: doses,
      url: url,
    );
  }
}
