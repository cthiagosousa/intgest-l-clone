import 'package:mobx/mobx.dart';
import 'package:intgest_legislativo/models/parliamentary.dart';
import 'package:intgest_legislativo/data/parliamentarys_data.dart';

part 'parliamentary_store.g.dart';

class ParliamentaryStore = _ParliamentaryStore with _$ParliamentaryStore;

abstract class _ParliamentaryStore with Store {
  ObservableList<Parliamentary> parliamentarys =
      ObservableList<Parliamentary>.of([...data]);
}
