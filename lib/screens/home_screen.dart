import 'package:flutter/material.dart';
import 'package:intgest_legislativo/screens/option_list_screen.dart';
import 'package:intgest_legislativo/components/appbar_bottom_widget.dart';
import 'package:intgest_legislativo/components/custom_bottom_navigation_bar_widget.dart';
import 'package:intgest_legislativo/screens/notifications_screen.dart';
import 'package:intgest_legislativo/screens/news_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 1;

  final List<Widget> _screens = [
    NotificationsScreen(),
    OptionListScreen(),
    NewsScreen(),
  ];

  void setCurrentPage(int currentIndex) {
    setState(() {
      _currentPage = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 180,
        title: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.cover,
          width: 150,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.help,
              color: theme.primaryColor,
              size: 25,
            ),
            splashRadius: 23,
            splashColor: theme.accentColor,
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: AppBarBottomWidget(size: 130),
        ),
      ),
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
