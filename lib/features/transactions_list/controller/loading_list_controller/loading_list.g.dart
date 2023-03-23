// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoadingTransactionsController on _LoadingTransactionsController, Store {
  late final _$loadedObjectsAtom = Atom(
      name: '_LoadingTransactionsController.loadedObjects', context: context);

  @override
  ObservableFuture<List<TransactionItem>>? get loadedObjects {
    _$loadedObjectsAtom.reportRead();
    return super.loadedObjects;
  }

  @override
  set loadedObjects(ObservableFuture<List<TransactionItem>>? value) {
    _$loadedObjectsAtom.reportWrite(value, super.loadedObjects, () {
      super.loadedObjects = value;
    });
  }

  late final _$_LoadingTransactionsControllerActionController =
      ActionController(
          name: '_LoadingTransactionsController', context: context);

  @override
  Future<dynamic> fetchData() {
    final _$actionInfo = _$_LoadingTransactionsControllerActionController
        .startAction(name: '_LoadingTransactionsController.fetchData');
    try {
      return super.fetchData();
    } finally {
      _$_LoadingTransactionsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loadedObjects: ${loadedObjects}
    ''';
  }
}
