import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movies/data/models/MoviesPopuler.dart';
import 'package:movies/ui/sreens/categories_tab/categoriestab.dart';
import 'package:movies/ui/sreens/home_tab/hometab.dart';
import 'package:movies/ui/sreens/search_tab/searchtab.dart';
import 'package:movies/ui/sreens/watchlist_tab/Watchedlist.dart';
import 'package:movies/ui/utils/app_assets.dart';


class MyHomePage extends StatefulWidget{
  static const routename="home";
 //final MoviesPopular moviesPopular;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}


class _MyHomePageState extends State<MyHomePage> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    HomeTab(page: 1),
    SearchTab(),
    CategoriesTab(),
    WatchedList(),

  ];

  @override


  //const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar:  AppBar(title: Text("onia")),
      backgroundColor: Colors.black,*/
      body:  tabs[currentTabIndex],
      bottomNavigationBar: buildBottomNavigation(context),

    );
  }

  Widget buildBottomNavigation(BuildContext context) {

    return BottomNavigationBar(
        onTap: (index) {
          currentTabIndex = index;
          setState(() {});
        },
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage(AppAssets.home)),
              label: "Home"
          ),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.search)),
              label: "Search"),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.ctegory)),
              label: "Categories"),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.watchedlist)),
              label: "WatchedList"),

  ]
    );
  }

}
