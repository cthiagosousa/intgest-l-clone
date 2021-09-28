import 'package:mobx/mobx.dart';
import 'package:intgest_legislativo/models/parliamentary.dart';
import 'package:intgest_legislativo/repositories/parliamentary_repository.dart';

part 'parliamentary_store.g.dart';

class ParliamentaryStore = _ParliamentaryStore with _$ParliamentaryStore;

abstract class _ParliamentaryStore with Store {
  final ParliamentaryRepository _parliamentaryRepository =
      ParliamentaryRepository();

  _ParliamentaryStore() {
    getParliamentarians();
  }

  @observable
  ObservableList<Parliamentary> parliamentarys =
      ObservableList<Parliamentary>.of([]);

  @action
  Future<void> getParliamentarians() async {
    final parliamentaryList = await _parliamentaryRepository.get();
    parliamentarys = ObservableList<Parliamentary>.of(parliamentaryList);
  }
}
