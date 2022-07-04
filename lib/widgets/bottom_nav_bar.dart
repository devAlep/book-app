import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onItemSelected,
  }) : super(key: key);
  final int currentIndex;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      selectedItemColor: Colors.white,
      onTap: (index) {
        onItemSelected(index);
      },
      unselectedItemColor: Colors.white60,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            MdiIcons.viewDashboard,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            CupertinoIcons.search,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            MdiIcons.heart,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            MdiIcons.menu,
          ),
        ),
      ],
    );
  }
}
