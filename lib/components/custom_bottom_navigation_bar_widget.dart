import 'package:flutter/material.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  final int currentPage;
  final void Function(int currentIndex) setCurrentPage;

  CustomBottomNavigationBarWidget({
    required this.currentPage,
    required this.setCurrentPage,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return BottomNavigationBar(
      currentIndex: this.currentPage,
      backgroundColor: theme.primaryColor,
      fixedColor: Colors.white,
      unselectedItemColor: theme.accentColor,
      onTap: this.setCurrentPage,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          label: "Notificações",
          icon: Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          label: "Início",
          icon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: "Notícias",
          icon: Icon(Icons.new_releases),
        ),
      ],
    );
  }
}
