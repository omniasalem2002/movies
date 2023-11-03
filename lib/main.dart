import 'package:flutter/material.dart';
import 'package:movies/ui/sreens/home/MyHomePage.dart';
import 'package:movies/ui/sreens/splash/splash.dart';
import 'package:movies/ui/widget/popular_widget.dart';

void main() {
  runApp(const MyApp());
}
ThemeData _darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.black,selectedItemColor: Color(
        0xffe19a14),selectedIconTheme: IconThemeData(color: Color(0xffFFBB3B))),
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ));


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _darkTheme,

      routes: {
        MyHomePage.routename:(_)=>MyHomePage(),
        SplashScreen.routeName:(_)=>SplashScreen(),
        },
        initialRoute: MyHomePage.routename
        ,
    );}
}
