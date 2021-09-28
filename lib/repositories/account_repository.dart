import 'package:hive/hive.dart';
import 'package:intgest_legislativo/models/account/account.dart';

class AccountRepository {
  Box<Account> _accounts = Hive.box<Account>("accounts");

  Account? currentAccount() {
    return _accounts.get("current");
  }

  Future<void> saveAccount(Account account) async {
    await _accounts.put("current", account);
  }

  Future<void> deleteAccount() async {
    _accounts.delete("current");
  }
}
