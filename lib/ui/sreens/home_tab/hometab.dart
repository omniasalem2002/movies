import 'package:flutter/material.dart';
import 'package:movies/data/api_manager/api_manager.dart';
import 'package:movies/data/models/MoviesPopuler.dart';
import 'package:movies/ui/widget/popular_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movies/ui/widget/constant.dart';
import 'package:movies/ui/widget/tob_rated.dart';
class HomeTab extends StatefulWidget {
  int page;
   HomeTab({super.key,required this.page});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  //late Future<MoviesPopular> moviespopuler;

  @override
 /* void initState() {
    super.initState();
    moviespopuler = ApiManager().GetMovie();
  }*/
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: 7),
      child: Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: FutureBuilder(
                future: ApiManager().GetMovie(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {

                    return  PopularWidget(snapshot: snapshot);
                  } else if (snapshot.hasError) {
                    return
                      Center(child: Text(snapshot.error.toString(),style: TextStyle(fontSize: 20)));
                  }else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }
            ),

          ),
            Text("New Releases",textAlign:TextAlign.start),
          SizedBox(
            child: FutureBuilder(
                future: ApiManager().GetNewReleses(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {

                    return  TopRated(snapshot: snapshot);
                  } else if (snapshot.hasError) {
                    return
                      Center(child: Text(snapshot.error.toString(),style: TextStyle(fontSize: 20)));
                  }else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }
            ),
          ),
          Text("Recommended",textAlign:TextAlign.start),
          SizedBox(
            child: FutureBuilder(
                future: ApiManager().GetUpComing(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {

                    return  TopRated(snapshot: snapshot);
                  } else if (snapshot.hasError) {
                    return
                      Center(child: Text(snapshot.error.toString(),style: TextStyle(fontSize: 20)));
                  }else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }
            ),
          )
        ]),
    );

  }
}
