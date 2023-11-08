import 'package:flutter/material.dart';
import 'package:movies/data/models/MoviesPopuler.dart';
import 'package:movies/ui/widget/constant.dart';
import 'package:movies/ui/widget/popular_widget.dart';

class DetailsScreen extends StatelessWidget {
  static const routename = "details";
 // final MoviesPopuler movie;

   DetailsScreen({super.key/*,required this.movie*/});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as MoviesPopuler;
    return Scaffold(
       body: Container(
         child:  Image.network(
           "${Constant.ImagePath}${data.results![0].posterPath}",
           alignment: Alignment.centerRight,)),
         //Center(child: Text("${data.arguments}",style: TextStyle(color: Colors.black),)),
      //   color: Colors.white,

       );

  }
}
