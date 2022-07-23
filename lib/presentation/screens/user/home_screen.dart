import 'package:flutter/material.dart';
import 'package:ndoora_shopping/presentation/view/carousel_slider_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:
          [
            CarouselSliderView(),
          ],
        ),
      ),
    );
  }
}
