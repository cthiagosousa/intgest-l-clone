import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/stores/country_store.dart';
import 'package:intgest_legislativo/screens/option_list_tabscreen.dart';
import 'package:intgest_legislativo/screens/notifications_tabscreen.dart';
import 'package:intgest_legislativo/screens/news_tabscreen.dart';
import 'package:intgest_legislativo/components/custom_bottom_navigation_bar_widget.dart';
import 'package:intgest_legislativo/components/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();
  int _currentPage = 1;

  final List<Widget> _screens = [
    NotificationsTabScreen(),
    OptionListTabScreen(),
    NewsTabScreen(),
  ];

  void setCurrentPage(int currentIndex) {
    setState(() {
      _currentPage = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: _countryStore.country.name,
        subtitle1: "Câmara Municipal",
        subtitle2: _countryStore.country.legislation,
        imagePath: _countryStore.country.imagePath,
        backgroundImagePath: _countryStore.country.backgroundPath,
      ),
      drawer: Drawer(),
      bottomNavigationBar: CustomBottomNavigationBarWidget(
        currentPage: _currentPage,
        setCurrentPage: setCurrentPage,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: _screens[_currentPage],
      ),
    );
  }
}
