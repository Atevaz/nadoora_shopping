import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndoora_shopping/presentation/widget/medium_text.dart';
import 'package:ndoora_shopping/presentation/widget/regular_text.dart';

class MarketItemView extends StatelessWidget {
  double? rating = 0 ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              image: NetworkImage('https://nadoorashopping.com/assets/images/thumbnails/1568026326vMlslLz4.jpg'),
            ),
          ),
          RatingBar.builder(
            initialRating: rating!,
            itemSize: 20,
            direction: Axis.horizontal,
            allowHalfRating: true,
            updateOnDrag: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating)
            {
              this.rating = rating;
            },
          ),
          Row(
            children: [
              MediumText(text: '120 جنية',color: Colors.black,),
              SizedBox(width: 10,),
              RegularText(text: '160 جنيه',decoration: TextDecoration.lineThrough,),
              MediumText(text: 'Physical Product Title Title will Be Here',color: Colors.black,),
            ],
          ),


        ],
      ),
    );
  }
}
