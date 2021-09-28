// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountStore on _AccountStore, Store {
  final _$accountAtom = Atom(name: '_AccountStore.account');

  @override
  Account? get account {
    _$accountAtom.reportRead();
    return super.account;
  }

  @override
  set account(Account? value) {
    _$accountAtom.reportWrite(value, super.account, () {
      super.account = value;
    });
  }

  final _$saveAccountAsyncAction = AsyncAction('_AccountStore.saveAccount');

  @override
  Future<void> saveAccount(Account value) {
    return _$saveAccountAsyncAction.run(() => super.saveAccount(value));
  }

  final _$removeAccountAsyncAction = AsyncAction('_AccountStore.removeAccount');

  @override
  Future<void> removeAccount() {
    return _$removeAccountAsyncAction.run(() => super.removeAccount());
  }

  @override
  String toString() {
    return '''
account: ${account}
    ''';
  }
}
