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

    return SizedBox(
      child: BottomNavigationBar(
        currentIndex: this.currentPage,
        iconSize: 25,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        backgroundColor: theme.backgroundColor,
        unselectedItemColor: theme.primaryColor,
        selectedItemColor: theme.primaryColor,
        onTap: this.setCurrentPage,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: "Notificações",
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            label: "Início",
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Notícias",
            icon: Icon(Icons.new_releases_outlined),
            activeIcon: Icon(Icons.new_releases),
          ),
        ],
      ),
    );
  }
}
