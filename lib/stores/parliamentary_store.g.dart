// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parliamentary_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ParliamentaryStore on _ParliamentaryStore, Store {
  final _$parliamentarysAtom = Atom(name: '_ParliamentaryStore.parliamentarys');

  @override
  ObservableList<Parliamentary> get parliamentarys {
    _$parliamentarysAtom.reportRead();
    return super.parliamentarys;
  }

  @override
  set parliamentarys(ObservableList<Parliamentary> value) {
    _$parliamentarysAtom.reportWrite(value, super.parliamentarys, () {
      super.parliamentarys = value;
    });
  }

  final _$getParliamentariansAsyncAction =
      AsyncAction('_ParliamentaryStore.getParliamentarians');

  @override
  Future<void> getParliamentarians() {
    return _$getParliamentariansAsyncAction
        .run(() => super.getParliamentarians());
  }

  @override
  String toString() {
    return '''
parliamentarys: ${parliamentarys}
    ''';
  }
}
