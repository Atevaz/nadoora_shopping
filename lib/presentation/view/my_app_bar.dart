import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';
import '../widget/headline_text.dart';


class MyAppBar extends StatelessWidget {
  final String title;

  final IconData leadingIcon;

  final IconData actionIcon;

  const MyAppBar({
    Key? key,
    this.title = 'Kashkha',
    this.leadingIcon = Icons.menu,
    this.actionIcon= Icons.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: Icon(
      //     leadingIcon,
      //     color: AppColor.blue,
      //   ),
      //   color: AppColor.blue,
      // ),

      iconTheme: IconThemeData(
        color: AppColor.blue
      ),
      title: Image.asset('assets/images/logo.png',height: 65.h,),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            actionIcon,
            color: AppColor.blue,
          ),
        )
      ],
      centerTitle: false,
    );
  }
}
