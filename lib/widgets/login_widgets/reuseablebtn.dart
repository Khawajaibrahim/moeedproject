import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class reuseablebtn extends StatefulWidget {

  final double? high;
  final double? wid;
  final String? title;
final Color? color;
final Color? textcolor;
final Color bordercolor;

  const reuseablebtn({Key? key,this.title,this.high,this.wid,this.color,this.textcolor,this.bordercolor=Colors.transparent}) : super(key: key);

  @override
  State<reuseablebtn> createState() => _reuseablebtnState();
}

class _reuseablebtnState extends State<reuseablebtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.high!.h,
      width: widget.wid!.w,


      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color:widget.color!=null?widget.color: Colors.blue,
        border: Border.all(color:widget.bordercolor),
      ),
      child: Center(


        child:       Text(widget.title!,
          style: TextStyle(
            letterSpacing: 3,
              color:widget.textcolor!=null?widget.textcolor: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Aquatico-Regular'

          ),
        ),



      ),
    );
  }
}
