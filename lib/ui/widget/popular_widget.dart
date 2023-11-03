import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies/data/api_manager/api_manager.dart';
import 'package:movies/data/models/MoviesPopuler.dart';
import 'package:movies/ui/sreens/home_tab/details_screen.dart';
//import 'package:movies/data/models/UpCommingMovies.dart';
import 'package:movies/ui/widget/constant.dart';


class PopularWidget extends StatelessWidget {
  static const routename = "popular";
  final AsyncSnapshot snapshot;

  PopularWidget({super.key, required this.snapshot});


  @override
  Widget build(BuildContext context) {
  //  late UpCommingMovies upCommingMovies;
    return CarouselSlider.builder(itemCount:snapshot.data.results.length,
        itemBuilder: (context,itemIndex,PageViewIndex ){
          return //GestureDetector(
             // onTap: () {
               // Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen(movie: snapshot.data.results[itemIndex]) ,),);
                //child:
                SizedBox(

                    height: 200,
                    width: double.infinity,
                    child: Stack(children: [
                      //  Image.network("${Constant.ImagePath}${snapshot.data.re}"),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "${Constant.ImagePath}${snapshot.data!
                                .results![itemIndex].posterPath}",
                            alignment: Alignment.centerRight,)),


                    ],

                    )
                )
                ;
              }//);
    //    },
        ,options: CarouselOptions(
            padEnds: true,
            height: 300,
            autoPlay: true,
            scrollDirection: Axis.horizontal,
            enlargeCenterPage: true,
            pageSnapping: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            viewportFraction: 0.55,
            autoPlayCurve: Curves.fastOutSlowIn


        )
    );

  }
}