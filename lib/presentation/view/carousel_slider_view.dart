import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSliderView extends StatelessWidget {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<String> carouselSliderImage =
    [
      'https://nadoorashopping.com/assets/images/thumbnails/1568026326vMlslLz4.jpg',
      'https://nadoorashopping.com/assets/images/thumbnails/VxU6hwZqiz.jpg',
      'https://nadoorashopping.com/assets/images/thumbnails/1568026730uz1TS02K.jpg',
    ];
    return CarouselSlider(
      carouselController: _controller,
      items: carouselSliderImage
          .map(
            (e) => Card(
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image:NetworkImage(e),
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
              ),

            ),
      )
          .toList(),
      options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          height: 300,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason)
          {
           /* setState(() {
              _current = index;
            });*/
          }
      ),
    );
  }
}
