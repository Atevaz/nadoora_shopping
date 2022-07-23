import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.h,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => categoryViewItem(),
        separatorBuilder: (context, index) => SizedBox(
          width: 10.w,
        ),
        itemCount: 10,
      ),
    );
  }

  Widget categoryViewItem() => Container(
    width: 70.w,

    child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/1.jpg'),
              radius: 30,
            ),
            SizedBox(height: 5.h,),
            Text('Elctronics',maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
        ),
  );
}
