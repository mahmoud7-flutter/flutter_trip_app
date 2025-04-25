import 'package:flutter/material.dart';
import '../widgets/favoritscreen.dart';
import '../widgets/category_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectScreenIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectScreenIndex = index;
    });
  }

  final List<Widget> _screens = [
    CategoryScreen(),
    Favoritscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hjhjhj"),
      ),
      body: _screens[_selectScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'التطبيقات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'المفضله',
          ),
        ],
      ),
    );
  }
}
