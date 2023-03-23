// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_point.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoadingPointController on _LoadingPointController, Store {
  late final _$loadedPointAtom =
      Atom(name: '_LoadingPointController.loadedPoint', context: context);

  @override
  ObservableFuture<Total>? get loadedPoint {
    _$loadedPointAtom.reportRead();
    return super.loadedPoint;
  }

  @override
  set loadedPoint(ObservableFuture<Total>? value) {
    _$loadedPointAtom.reportWrite(value, super.loadedPoint, () {
      super.loadedPoint = value;
    });
  }

  late final _$_LoadingPointControllerActionController =
      ActionController(name: '_LoadingPointController', context: context);

  @override
  Future<dynamic> fetchData() {
    final _$actionInfo = _$_LoadingPointControllerActionController.startAction(
        name: '_LoadingPointController.fetchData');
    try {
      return super.fetchData();
    } finally {
      _$_LoadingPointControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loadedPoint: ${loadedPoint}
    ''';
  }
}
