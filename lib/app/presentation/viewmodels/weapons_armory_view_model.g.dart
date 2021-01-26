// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_armory_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WeaponsArmoryViewModel on _WeaponsArmoryViewModel, Store {
  Computed<List<Vaccine>> _$listVaccinesComputed;

  @override
  List<Vaccine> get listVaccines => (_$listVaccinesComputed ??=
          Computed<List<Vaccine>>(() => super.listVaccines,
              name: '_WeaponsArmoryViewModel.listVaccines'))
      .value;

  final _$_listVaccinesAtom =
      Atom(name: '_WeaponsArmoryViewModel._listVaccines');

  @override
  List<Vaccine> get _listVaccines {
    _$_listVaccinesAtom.reportRead();
    return super._listVaccines;
  }

  @override
  set _listVaccines(List<Vaccine> value) {
    _$_listVaccinesAtom.reportWrite(value, super._listVaccines, () {
      super._listVaccines = value;
    });
  }

  @override
  String toString() {
    return '''
listVaccines: ${listVaccines}
    ''';
  }
}
