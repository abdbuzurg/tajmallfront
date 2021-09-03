import 'package:flutter/material.dart';
import 'package:taj_mall/views/Home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selected = 0;
  PageController _pageController = PageController();

  void _changed(int selected) {
    setState(() {
      _selected = selected;
    });
    _pageController.jumpToPage(_selected);
  }

  final List<Widget> tabsContent = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          Center(child: Text("Избранное")),
          Center(child: Text("Корзина")),
          Center(child: Text("Профиль")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selected,
        onTap: (index) => _changed(index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Главная",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Избранное",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Корзина",
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Профиль",
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
