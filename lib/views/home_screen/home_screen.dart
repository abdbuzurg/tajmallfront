import 'package:flutter/material.dart';
import 'package:taj_mall/helpers/constants.dart';
import 'package:taj_mall/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'woman_tab/woman_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  late ScrollController _scrollController = ScrollController();
  late TabController _tabController =
      TabController(length: _tabs.length, vsync: this);
  final List<Widget> _tabs = [
    Tab(text: "Женщинам"),
    Tab(text: "Мужчинам"),
    Tab(text: "Детям"),
  ];
  final List<Widget> _tabViews = [
    WomanTab(),
    Container(
      child: Text("kekM"),
    ),
    Container(
      child: Text("kekD"),
    ),
  ];
  final List<String> drawerButtons = [
    "Бренды",
    "Бренды",
    "Бренды",
    "Бренды",
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 65,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: theme.backgroundColor,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
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
          IconButton(
            onPressed: () {
              context.read(themeProvider).changeTheme();
            },
            icon: Icon(
              Icons.notifications,
              color: theme.backgroundColor,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 5,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: theme.primaryColor,
              ),
              child: Text(
                "Taj Mall",
                style: TextStyle(
                  color: theme.backgroundColor,
                  fontSize: theme.textTheme.headline1!.fontSize,
                ),
              ),
            ),
            ...drawerButtons.map(
              (text) => InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                    horizontal: kDefaultPadding * 2,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: theme.textTheme.headline3!.fontSize,
                      // fontSize: theme.textTheme.headline1!.fontSize,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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
