import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intgest_legislativo/stores/country_store.dart';
import 'package:intgest_legislativo/utils/routes.dart';
import 'package:intgest_legislativo/screens/home_screen.dart';
import 'package:intgest_legislativo/screens/parliamentary_list_screen.dart';
import 'package:intgest_legislativo/screens/parliamentary_screen.dart';

void main() {
  GetIt.I.registerSingleton<CountryStore>(CountryStore());
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IntGest-L",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        accentColor: Colors.blue[400],
        backgroundColor: Color(0XFFf2f2f2),
        scaffoldBackgroundColor: Color(0XFFf2f2f2),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0XFFf2f2f2),
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
          ),
          headline2: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.white,
          ),
          headline3: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white,
          ),
          headline6: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.blue[900],
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: 13,
            color: Colors.black87,
          ),
          bodyText2: GoogleFonts.poppins(
            fontSize: 13,
            color: Colors.blue[900],
          ),
        ),
        primaryIconTheme: IconThemeData(
          color: Colors.blue[900],
          size: 25,
        ),
      ),
      routes: {
        Routes.HOME: (_) => HomeScreen(),
        Routes.PARLIAMENTARIANS: (_) => ParliamentaryListScreen(),
        Routes.PARLIAMENTARY: (_) => ParliamentaryScreen(),
      },
    );
  }
}
