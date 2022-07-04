import 'package:flutter/material.dart';
import 'package:untitled/pages/screens/dashboard_screen.dart';
import 'package:untitled/pages/screens/favourites_screen.dart';
import 'package:untitled/pages/screens/search_screen.dart';
import 'package:untitled/pages/screens/settings_screen.dart';
import 'package:untitled/widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String email;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _screens = const [
    DashboardScreen(),
    SearchScreen(),
    FavouritesScreen(),
    SettingsScreen()
  ];

  int _currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens[_currentSelectedIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentSelectedIndex,
        onItemSelected: (index) {
          setState(() {
            _currentSelectedIndex = index;
          });
        },
      ),
    );
  }
}
