import 'package:mobx/mobx.dart';
import 'package:intgest_legislativo/models/country.dart';

part 'country_store.g.dart';

class CountryStore = _CountryStore with _$CountryStore;

abstract class _CountryStore with Store {
  @observable
  Country country = Country(
    name: "Piquet Carneiro",
    email: "camarapiquetcarneiro.ce.gov.br",
    legislation: "2021 - 2024",
    imagePath:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Bandeira_de_Piquet_Carneiro.png/125px-Bandeira_de_Piquet_Carneiro.png",
    backgroundPath:
        "http://revistacentral.com.br/wp-content/uploads/2020/07/Piquet-Carneiro-768x402.jpg",
  );
}
