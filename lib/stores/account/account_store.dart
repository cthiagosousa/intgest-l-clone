import 'package:intgest_legislativo/models/account/account.dart';
import 'package:mobx/mobx.dart';
import 'package:intgest_legislativo/repositories/account_repository.dart';

part 'account_store.g.dart';

class AccountStore = _AccountStore with _$AccountStore;

abstract class _AccountStore with Store {
  final AccountRepository _accountRepository = AccountRepository();

  _AccountStore() {
    account = _accountRepository.currentAccount() ?? null;
  }

  @observable
  Account? account;

  @action
  Future<void> saveAccount(Account value) async {
    account = value;
    await _accountRepository.saveAccount(account!);
  }

  @action
  Future<void> removeAccount() async {
    account = null;
    await _accountRepository.deleteAccount();
  }
}
