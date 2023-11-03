import 'package:flutter/material.dart';
import 'package:movies/data/models/MoviesPopuler.dart';

class DetailsScreen extends StatelessWidget {
  static const routename = "details";
  final MoviesPopuler movie;
   DetailsScreen({super.key,required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         color: Colors.white,
       ),
    );
  }
}
