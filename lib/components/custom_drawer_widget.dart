import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/components/drawer_item_widget.dart';
import 'package:intgest_legislativo/stores/country_store.dart';
import 'package:intgest_legislativo/utils/routes.dart';

class CustomDrawerWidget extends StatelessWidget {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: UserAccountsDrawerHeader(
              accountName: Text(
                "Câmara Municipal de ${_countryStore.country.name}",
                style: theme.textTheme.headline3,
              ),
              accountEmail: Text(
                _countryStore.country.email,
                style: theme.textTheme.headline3!.copyWith(fontSize: 13),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(_countryStore.country.imagePath),
              ),
              currentAccountPictureSize: Size.square(70),
              decoration: BoxDecoration(
                  color: theme.primaryColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue.shade900, BlendMode.modulate),
                    image: NetworkImage(_countryStore.country.backgroundPath),
                  )),
            ),
          ),
          DrawerItemWidget(
            text: "Configurações",
            icon: Icons.settings,
            onTap: () {},
          ),
          DrawerItemWidget(
            text: "Login",
            icon: Icons.person,
            onTap: () => Navigator.pushNamed(context, Routes.LOGIN),
          ),
          DrawerItemWidget(
            text: "Sobre",
            icon: Icons.info,
            onTap: () {},
          ),
          DrawerItemWidget(
            text: "Sair",
            icon: Icons.exit_to_app,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
