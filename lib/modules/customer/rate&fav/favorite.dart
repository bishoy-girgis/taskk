import 'package:flutter/material.dart';
import 'package:sanai3ey/shared/constants/constants.dart';
import '../../../models/favorite-model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:favorite_button/favorite_button.dart';
class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Craftsman',
          style: TextStyle(
              color: secondaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 27
          ),
        ),
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: secondaryColor),
      ),
      body: Column(
        children: FavData.map((item){
          return Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0,bottom: 10.0,top: 50),
            child: Container(
                decoration:BoxDecoration(
                    border:Border.all(color:primaryColor,width: 4),
                    borderRadius: BorderRadius.circular(10)
                ) ,
                child: Row(
                  children: [
                    SizedBox(
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
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              item.name,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FavoriteButton(
                              isFavorite: true,
                              valueChanged: (_isFavorite) {
                                print('Is Favorite : $_isFavorite');
                                if(_isFavorite == false){
                                  
                                }
                              },
                            ),
                          ],
                        ),
                        Text(
                          item.category,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.black45,
                          ),
                        ),
                        RatingBarIndicator(
                          rating: item.rate,
                          itemSize: 30.0,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        SizedBox(
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
