import 'package:flutter/material.dart';
import 'package:taj_mall/views/Home/woman_tab/woman_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    Tab(text: "Женщинам"),
    Tab(text: "Мужчинам"),
    Tab(text: "Детям"),
  ];
  late ScrollController _scrollController = ScrollController();
  late TabController _tabController =
      TabController(length: _tabs.length, vsync: this);
  final List<Widget> _tabViews = [
    WomanTab(),
    Container(
      child: Text("kekM"),
    ),
    Container(
      child: Text("kekD"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            prefixStyle: TextStyle(color: Colors.black),
            hintText: "Поиск",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 16),
            fillColor: Color.fromRGBO(227, 70, 70, 0.5),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
        actions: [
          SizedBox(width: 10),
          Icon(Icons.notifications),
          SizedBox(width: 10),
        ],
      ),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: TabBar(
                controller: _tabController,
                labelColor: Theme.of(context).primaryColor,
                isScrollable: true,
                tabs: _tabs,
              ),
            )
          ];
        },
        body: Container(
          child: TabBarView(controller: _tabController, children: _tabViews),
        ),
      ),
    );
  }
}
