import 'package:flutter/material.dart';
import 'package:movies/ui/sreens/home/MyHomePage.dart';
import 'package:movies/ui/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, MyHomePage.routename);
    });
  }

  @override
  Widget build(BuildContext context) {
    //double width=MediaQuery.of(context);
    return Scaffold(
        body: Image.asset(AppAssets.splash,
            fit: BoxFit.fill,width: double.infinity,)
    );
  }
}
