import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSliderView extends StatelessWidget {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<String> carouselSliderImage =
    [
      'assets/images/1564224753007.jpg',
      'assets/images/2.jpg',
      'assets/images/3.jpg',
    ];

/*
    Card(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        //clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 200,
        child: Image(
          image:NetworkImage(e),
          //fit: BoxFit.cover,
          //width: MediaQuery.of(context).size.width,
          //height: 200,
        ),
      ),

    )
*/
    return CarouselSlider(
      carouselController: _controller,
      items: carouselSliderImage
          .map(
            (e) => Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
              ),
              child: Image(
                height: 250,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,

                image: AssetImage(e),
              ),
            ),
      )
          .toList(),
      options: CarouselOptions(
          aspectRatio: .9,
          enlargeCenterPage: true,
           height: 250,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(seconds: 2),
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
