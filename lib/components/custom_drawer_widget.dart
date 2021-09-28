import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/components/primary_button_widget.dart';
import 'package:intgest_legislativo/stores/account/account_store.dart';
import 'package:intgest_legislativo/stores/country/country_store.dart';
import 'package:intgest_legislativo/utils/routes.dart';
import 'package:intgest_legislativo/components/drawer_item_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();
  final AccountStore _accountStore = GetIt.I.get<AccountStore>();

  Future<void> logout(BuildContext context) async {
    await _accountStore.removeAccount();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
        content: Text("Você saiu da sua conta."),
      ),
    );

    Navigator.popAndPushNamed(context, Routes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Drawer(
      child: Container(
        color: theme.backgroundColor,
        child: Column(
          children: [
            Observer(
              builder: (_) {
                return Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.blue.shade900, BlendMode.modulate),
                      image: NetworkImage(_countryStore.country.backgroundPath),
                    ),
                  ),
                  child: _accountStore.account == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 120,
                              child: PrimaryButtonWidget(
                                text: "Login",
                                onPressed: () =>
                                    Navigator.pushNamed(context, Routes.LOGIN),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Crie sua conta",
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headline3,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              _accountStore.account!.email,
                              style: theme.textTheme.headline3,
                            ),
                            TextButton(
                              onPressed: () async => await logout(context),
                              child: Text(
                                "Logout",
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headline3,
                              ),
                            ),
                          ],
                        ),
                );
              },
            ),
            DrawerItemWidget(
              text: "Configurações",
              icon: Icons.settings,
              onTap: () => Navigator.pushNamed(context, Routes.SETTINGS),
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
      ),
    );
  }
}
