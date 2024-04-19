import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../models/rating-model.dart';
class RatingPage extends StatelessWidget {
  const RatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Customer Rating',
            style: TextStyle(
              color: secondaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 27
            ),
        ),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: secondaryColor),
      ),
      body: Column(
        children: RateData.map((item){
          return Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0,bottom: 10.0,top: 50),
            child: Container(
                decoration:BoxDecoration(
                    border:Border.all(color:primaryColor,width: 4),
                    borderRadius: BorderRadius.circular(10)
                ) ,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -30, 0),
                      decoration:BoxDecoration(
                        border:Border.all(color:primaryColor,width: 4),
                        borderRadius: BorderRadius.circular(35),
                      ) ,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                           item.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Text(
                          item.name,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                        // RatingBar.builder(
                        //   initialRating: 0,
                        //   minRating: 1,
                        //   itemSize: 30.0,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 1),
                        //   itemBuilder:(context,_) =>Icon(Icons.star,color: Colors.amber,),
                        //   onRatingUpdate:(rating){
                        //     print(rating);
                        //   } ,
                        // ),
                        RatingBarIndicator(
                          rating: item.rate,
                          itemSize: 30.0,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        Text(
                          item.comment,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.black45,
                          ),
                        ),
                        const SizedBox(
                          height:10,
                        ),
                      ],
                    )
                  ],
                )
            ),
          );
        }).toList(),
      ),
    );
  }
}


