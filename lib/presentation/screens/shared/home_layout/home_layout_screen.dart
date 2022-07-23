import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndoora_shopping/presentation/styles/colors.dart';
import 'package:ndoora_shopping/presentation/view/category_view.dart';
import 'package:ndoora_shopping/presentation/view/drawer_navbar.dart';
import 'package:ndoora_shopping/presentation/view/my_app_bar.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: MyAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CategoryView(),
            SizedBox(
              height: 20.h,
            ),
            CategoryView(),
          ],
        ),
      ),
      drawer: const NavBar(),

    );
  }
}
