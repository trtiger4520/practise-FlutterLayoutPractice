import 'package:flutter/material.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 1,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      unselectedItemColor: const Color.fromRGBO(119, 124, 134, 1),
      selectedItemColor: Theme.of(context).primaryColor,
      iconSize: 25,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.folder),
          label: 'folder',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_week),
          label: 'view week',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'account',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outlined),
          label: 'peoples',
        ),
      ],
    );
  }
}
