import 'package:flutter/material.dart';
import 'package:movies/ui/widget/constant.dart';
class NewReleses extends StatelessWidget {
  final AsyncSnapshot snapshot;
   NewReleses({super.key,required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      height: 180,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data.results.length,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(5),

              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network("${Constant.ImagePath}${snapshot.data!.results![index].posterPath}")));
        }

        ,),
    )
    ;
  }
}
