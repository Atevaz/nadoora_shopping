
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../router/app_router_names.dart';
import '../styles/colors.dart';
import '../widget/divider.dart';


class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 45),
            child: Image.asset('assets/images/logo.png',height: 65.h,),
          ),
          ListTile(
            // Fixme: mahmoud add the right icon

            horizontalTitleGap: 0,
            title: Text(
              'Home',
              style: TextStyle(color: AppColor.black),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(AppRouterNames.rSplashRoute);
            },
          ),
          myDivider(color: AppColor.black, tillEnd: true),
          ListTile(
            // Fixme: mahmoud add the right icon
            horizontalTitleGap: 0,
            title: Text(
              'Contact Us',
              style: TextStyle(color: AppColor.black),
            ),
            onTap: () {},
          ),
         myDivider(color: AppColor.black, tillEnd: true),
          ListTile(
            // Fixme: mahmoud add the right icon
            horizontalTitleGap: 0,
            title: Text(
              "Who's Us",
              style: TextStyle(color: AppColor.black),
            ),
            onTap: () {},
          ),
          myDivider(color: AppColor.black, tillEnd: true),
        ],
      ),
    );
  }
}
