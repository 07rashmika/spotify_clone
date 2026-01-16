import 'package:flutter/material.dart';
import 'package:spotify_clone/models/colors.dart';

import 'package:spotify_clone/screens/home.dart';
import 'package:spotify_clone/screens/library.dart';
import 'package:spotify_clone/screens/search.dart';
import 'package:spotify_clone/widgets/create.dart';
import 'package:spotify_clone/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = const [
      HomeScreen(),
      SearchScreen(),
      YourLibraryScreen(),
      Create(),
    ];

    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(drawerIcon: Text('A')),
      body: pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: SpotifyColors.white,
        unselectedItemColor: SpotifyColors.lightGrey,
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.burst_mode_outlined),
            label: 'Your Library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Create'),
        ],
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
