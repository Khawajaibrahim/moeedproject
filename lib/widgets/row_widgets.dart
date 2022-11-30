import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class E_row extends StatelessWidget {
  String title;
  String desc;
  E_row({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 160.w,
          child: Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 15.sp),
          ),
        ),
        SizedBox(
          width: 200.w,
          child: Text(
            desc,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
