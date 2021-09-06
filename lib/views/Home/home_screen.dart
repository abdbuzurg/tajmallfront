import 'package:flutter/material.dart';
import 'package:taj_mall/providers/theme_provider.dart';
import 'package:taj_mall/views/Home/woman_tab/woman_tab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
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
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            prefixIcon: Icon(Icons.search, color: theme.backgroundColor),
            hintText: "Поиск",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 16),
            fillColor: Color.fromRGBO(230, 156, 46, 1),
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
          IconButton(
            onPressed: () {
              context.read(themeProvider).changeTheme();
            },
            icon: Icon(
              Icons.notifications,
              color: theme.backgroundColor,
            ),
          ),
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
