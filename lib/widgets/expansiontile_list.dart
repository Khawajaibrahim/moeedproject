import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';
import 'package:flutter/painting.dart';
class expansiontilelist extends StatefulWidget {
  String? title;
   expansiontilelist({super.key,this.title});


  @override
  State<expansiontilelist> createState() => expansiontilelistState();
}

class expansiontilelistState extends State<expansiontilelist> {
  bool isExpand = false;
  @override
  void initState() {
    super.initState();
    isExpand = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: (isExpand != true)
            ? BorderRadius.all(Radius.circular(10))
            : BorderRadius.all(Radius.circular(10)),
        // border: Border.all(color: Colors.pink)
      ),
      child: ExpansionTile(
        //  key: PageStorageKey<String>(this.widget.headerTitle),
        title: Container(
            width: double.infinity,
            child: Text(
              widget.title!,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: (isExpand != true) ? 15.sp : 15.sp),
            )),
        trailing: (isExpand == true)
            ? Icon(
          Icons.remove,
          size: 32,
          color: Colors.red,
        )
            : Icon(Icons.add, size: 32, color: Colors.red),
        onExpansionChanged: (value) {
          setState(() {
            isExpand = value;
          });
        },
        children: [
          SizedBox(
            height: 210.h,
            width: double.infinity,

            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25.w),
                      width: double.infinity,

                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xffC21A1A).withOpacity(0.4),
                        ),
                      ),
                      child: Container(
                        height:92.h ,
                        width: 280.w,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:9.h,left:9.w),
                              child:   Image.asset("images/home.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:9.h,left:97.w),
                              child:   Text(
                                'Homestreat Bank',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:30.h,left:97.w),
                              child:   Text(
                                '(ATM/Bank/Exchange) 5030 \nBusiness Center Dr FairField, CA\n91534',
                                style: TextStyle(
                                    color: Color(0xff5D728A),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:71.h,left:97.w),
                              child:   Text(
                                'Mon-Fri: 9:00AM-5:00PM',
                                style: TextStyle(
                                    color: Color(0xff5D728A),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:15.h,)
                  ],
                );

              },
            ),
          )

        ],
      ),
    );
  }
}
