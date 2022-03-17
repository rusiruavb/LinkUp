import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: colorPrimary,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? const Icon(Icons.badge)
              : const Icon(Icons.badge_outlined),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ? const Icon(Icons.book)
              : const Icon(Icons.book_outlined),
          label: 'Applications',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? const Icon(Icons.add)
              : const Icon(Icons.add_outlined),
          label: 'Post',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 3
              ? const Icon(Icons.bookmark)
              : const Icon(Icons.bookmark_outline),
          label: 'Bookmarks',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 4
              ? const Icon(Icons.person)
              : const Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
