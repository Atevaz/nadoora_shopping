import 'package:flutter/material.dart';
import 'package:ndoora_shopping/presentation/view/carousel_slider_view.dart';
import 'package:ndoora_shopping/presentation/view/market_item_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children:
              [
                CarouselSliderView(),
                SizedBox(height: 20,),
                SizedBox(height:400,child: MarketItemView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
