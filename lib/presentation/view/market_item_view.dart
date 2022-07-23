import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndoora_shopping/presentation/styles/colors.dart';
import 'package:ndoora_shopping/presentation/widget/medium_text.dart';
import 'package:ndoora_shopping/presentation/widget/regular_text.dart';

class MarketItemView extends StatelessWidget {
  double? rating = 0 ;

  @override
  Widget build(BuildContext context) {
    return Card(
      //elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Column(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MediumText(text: '120 جنية',color: AppColor.black,),
                    SizedBox(width: 10,),
                    RegularText(text: '160 جنيه',decoration: TextDecoration.lineThrough,color: AppColor.grey),
                  ],
                ),
                SizedBox(height: 5,),
                MediumText(text: 'Physical Product Title Title will Be Here',color: AppColor.grey,textAlign: TextAlign.center),
              ],
            ),
            Column(
              children:
              [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColor.blue,
                  child: Icon(Icons.favorite,color: AppColor.white,size: 20),
                ),
                SizedBox(height: 10,),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColor.blue,
                  child: Icon(Icons.remove_red_eye,color: AppColor.white,size: 20),
                ),
                SizedBox(height: 10,),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColor.blue,
                  child: Icon(Icons.compare_arrows,color: AppColor.white,size: 20),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
