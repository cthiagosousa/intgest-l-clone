import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData ligthTheme = ThemeData(
    primaryColor: Colors.blue[900],
    accentColor: Colors.blue[400],
    backgroundColor: Color(0XFFf2f2f2),
    scaffoldBackgroundColor: Color(0XFFf2f2f2),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0XFFf2f2f2),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0XFFf2f2f2),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
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
  );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.blue[400],
    accentColor: Colors.blue[900],
    backgroundColor: Color(0XFF262626),
    scaffoldBackgroundColor: Color(0XFF262626),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0XFF262626),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0XFF262626),
    ),
    cardTheme: CardTheme(
      color: Colors.black,
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
        color: Colors.blue[400],
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 13,
        color: Colors.white,
      ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 13,
        color: Colors.blue[400],
      ),
    ),
    primaryIconTheme: IconThemeData(
      color: Colors.blue[400],
      size: 25,
    ),
  );
}
