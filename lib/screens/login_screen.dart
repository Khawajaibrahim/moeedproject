import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/login_widgets/reuseablebtn.dart';
import '../widgets/login_widgets/reuseabletextfield.dart';
import '../widgets/login_widgets/useabletext.dart';
class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE9F6),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),

            Padding(
              padding: EdgeInsets.only(left:35.w),
              child: useabletextfield(fon:FontWeight.w400,title: "Reddrop",color:Colors.black,size: 25,fam:"Aquatico-Regular"),
            ),
            SizedBox(height:14.h),
            Padding(
              padding: EdgeInsets.only(left:35.w),
              child: Container(
                height:64.h ,
                  width: 300.w,
                  child: useabletextfield(fon:FontWeight.w400,title: "W e l c o m e  B a c k ,    R e d d r o p  M e m b e r",color:Colors.black,size: 25,fam:"Nexa Bold",)),
            ),
            Padding(
              padding: EdgeInsets.only(left:190.w),
              child: Image.asset('images/Vector 10.png')
            ),
            SizedBox(height: 55.h,),
            Padding(
                padding: EdgeInsets.only(left:35.w),
                child: useabletextfield(fon:FontWeight.w400,title: "Sign in to your account",color:Colors.black,size: 18,fam:"Nexa Regular"),
            ),
           SizedBox(height: 68.h,),
            Padding(
              padding: EdgeInsets.only(left:35.w),
              child: useabletextfield(fon:FontWeight.w400,title: "Your Email",color:Color(0xff000000).withOpacity(0.8),size: 12,fam:"Nexa Light"),
            ),
SizedBox(height:5.h),

            Padding(
              padding: EdgeInsets.only(left:35.w,right:35.w),
              child: reuseabletextfield(hint: "Please enter your email",txt:email,color:0, secure: false,rad:15),
            ),
            SizedBox(height: 19.h,),


            Padding(
              padding: EdgeInsets.only(left:35.w),
              child: useabletextfield(fon:FontWeight.w400,title: "YOUR PASSWORD",color:Color(0xff000000).withOpacity(0.8),size: 12,fam:"Nexa Light"),
            ),
            SizedBox(height:5.h),

            Padding(
              padding: EdgeInsets.only(left:35.w,right:35.w),
              child: reuseabletextfield(hint: "Please enter your email",txt:email,color:0, secure: false,rad:15),
            ),
            SizedBox(height: 27.h,),
            Padding(
              padding: EdgeInsets.only(left:200.w,),
              child: useabletextfield(fon:FontWeight.w400,title: "FORGOTT PASSWORD",color:Colors.black,size: 15,fam:"Nexa Light",underlin: true,),
            ),
            SizedBox(height: 104.h,),
          Padding(
            padding: EdgeInsets.only(left:35.w,right: 35.w),
            child: reuseablebtn(title: "GET STARTED",high:61 ,wid: 357,color: Color(0xffFFE9F6),textcolor: Colors.black,bordercolor: Color(0xffFFCDD6),),
          ),
SizedBox(height: 41.h,),

          Center(
            child: RichText(
              // Controls visual overflow
             // overflow: TextOverflow.clip,

              // Controls how the text should be aligned horizontally
              textAlign: TextAlign.center,

              // Control the text direction
              //textDirection: TextDirection.rtl,

              // Whether the text should break at soft line breaks
              //softWrap: true,

              // Maximum number of lines for the text to span
              maxLines: 3,

              // The number of font pixels for each logical pixel
             // textScaleFactor: 1,
              text: TextSpan(
                text: '',
                //style: DefaultTextStyle.of(context).style,
                children:  <InlineSpan>[

                  TextSpan(
                      text: 'By clicking Get Started you agree to\n', style: TextStyle(fontSize: 15.sp,fontFamily: "Nexa Bold",color: Colors.black)),
                  WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(height: 15.h,)),

                  TextSpan(
                      text: 'Terms & Conditions', style: TextStyle(fontSize: 15.sp,fontFamily: "Nexa Bold",color: Color(0xffD8667B))),
                  TextSpan(
                      text: ' and ', style: TextStyle(fontSize: 15.sp,fontFamily: "Nexa Bold",color: Colors.black)),
                  TextSpan(
                      text: 'Privacy &\n', style: TextStyle(fontSize: 15.sp,fontFamily: "Nexa Bold",color: Color(0xffD8667B))),
                  WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: SizedBox(height: 15.h,)),
                  TextSpan(
                      text: 'Cookie Policy', style: TextStyle(fontSize: 15.sp,fontFamily: "Nexa Bold",color: Color(0xffD8667B))),
                ],
              ),
            ),
          ),
            SizedBox(height: 21.h,),
            Row(
              children: [
                SizedBox(width: 110.w,),
                useabletextfield(fon:FontWeight.w400,title: "Already have an account? ",color:Color(0xffB0AAAA),size: 14,fam:"Nexa Bold",),
                useabletextfield(fon:FontWeight.w400,title: "Sign In",color:Colors.black,size: 14,fam:"Nexa Bold",underlin: true,),
              ],
            ),
SizedBox(height: 10.h,)
          ],
        ),
      )
    );
  }
}
