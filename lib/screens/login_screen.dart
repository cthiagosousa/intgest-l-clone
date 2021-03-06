import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/components/primary_button_widget.dart';
import 'package:intgest_legislativo/stores/account/account_store.dart';
import 'package:intgest_legislativo/stores/country/country_store.dart';
import 'package:intgest_legislativo/services/auth_service.dart';
import 'package:intgest_legislativo/components/custom_app_bar_widget.dart';
import 'package:intgest_legislativo/components/input_widget.dart';
import 'package:intgest_legislativo/utils/routes.dart';

class LoginScreen extends StatelessWidget {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();
  final AccountStore _accountStore = GetIt.I.get<AccountStore>();
  final AuthenticationService _authService = AuthenticationService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signIn(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      final account = await _authService.signIn(
        _cpfController.text,
        _passwordController.text,
      );

      await _accountStore.saveAccount(account);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login feito com sucesso."),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
        ),
      );

      Navigator.popAndPushNamed(context, Routes.HOME);
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    final account = await _authService.signInWithGoogle();
    await _accountStore.saveAccount(account);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Login feito com sucesso."),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 1),
      ),
    );

    Navigator.popAndPushNamed(context, Routes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBarWidget(
        title: _countryStore.country.name,
        subtitle1: "C??mara Municipal",
        subtitle2: "Login",
        imagePath: _countryStore.country.imagePath,
        backgroundImagePath: _countryStore.country.backgroundPath,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  InputWidget(
                    hintText: "Email",
                    prefixIcon: Icons.card_membership,
                    keyboardType: TextInputType.emailAddress,
                    controller: _cpfController,
                    maxLength: 40,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Voc?? precisa informar um email.";
                      }
                    },
                  ),
                  InputWidget(
                    hintText: "Senha",
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller: _passwordController,
                    maxLength: 8,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Voc?? precisa informar uma senha.";
                      }
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: PrimaryButtonWidget(
                text: "Continuar",
                onPressed: () async => await signIn(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Esqueceu a senha?",
                      style: theme.textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async => await signInWithGoogle(context),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.backgroundColor,
                        image: DecorationImage(
                          image: AssetImage("assets/icons/google.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage("assets/icons/facebook.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: theme.accentColor,
              height: 1,
            ),
            Text("N??o tem uma conta, cadastre-se"),
          ],
        ),
      ),
    );
  }
}
