import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/NotificaitionModel.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}
List<Notifications> today = [
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: false ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: true ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: false ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: false ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: true ),

];
List<Notifications> yesterday = [
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: false ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: true ),

];
List<Notifications> lastsevendays = [
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: false ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: true ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: false ),
  Notifications(paidno: r'#0083',date:'Mon, October 31,2022   10:00 AM',quickinvoice: false ),


];
late bool control;
late String controllist = '';
List<List<Notifications>> listt = [
  today,
  yesterday,
  lastsevendays
];
class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    print(listt.length);
    print(listt[0].length);

    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
children: [


  Row(
      children: [

          Padding(
            padding: EdgeInsets.only(top:21.h,left:34.w),
            child: Icon(Icons.arrow_back_ios,color:Color(0xff2A3747),),
          ),
        SizedBox(width:302.w ,),
        Padding(
          padding: EdgeInsets.only(top:18.h,),
          child: Image.asset('images/notification.png'),
        )


      ],
  ),
  Padding(
      padding: EdgeInsets.only(top:25.h,left:25.w),
      child: Text('Notification',style: TextStyle(color: Color(0xff2A3747),fontSize: 22.sp,fontWeight:FontWeight.w800,fontFamily: "Mont-HeavyDEMO"),),
  ),

SizedBox(height: 30.h,),


//listview builder below

  ListView.builder(
      itemCount: listt.length,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {

        return Column(
          children: [

            Row(
              children: [
                SizedBox(width: 26.w,),
                Text(index==0?'Today':index==1?'Yesterday':'Last 7 days',style: TextStyle(color: Color(0xff2A3747),fontSize: 15.sp,fontWeight:FontWeight.w700,fontFamily: "Mont-ExtraLightDEMO"),),
                SizedBox(width:202.w),
                Text(index==0?'Mark as read':'',style: TextStyle(color: Color(0xffF0536B),fontSize: 15.sp,fontWeight:FontWeight.w700,fontFamily: "Mont-ExtraLightDEMO"),),
              ],
            ),
  SizedBox(height: 12.h,),



  ListView.builder(
    physics: ScrollPhysics(),
  shrinkWrap: true,
  itemCount: listt[index].length,

  itemBuilder: (BuildContext context, int index1) {

      if(index == 0)
        {
          control = today[index1].quickinvoice;

        }
      else if(index ==1){
        control = yesterday[index1].quickinvoice;
      }
      else
        {
          control = lastsevendays[index1].quickinvoice;
        }
    return Column(
      children: [
        control==false?
           Row(

          children: [

            SizedBox(width: 30.w,),
            Image.asset('images/invoice.png'),
            SizedBox(width: 13.w,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                      children:[
                        Text('Invoice ',style: TextStyle(color: Color(0xff2A3747),fontSize: 15.sp,fontWeight:FontWeight.w400,fontFamily: "Mont-ExtraLightDEMO"),),
                        Text('Paid ',style: TextStyle(color: Color(0xff006817),fontSize: 15.sp,fontWeight:FontWeight.w400,fontFamily: "Mont-ExtraLightDEMO"),),
                        Text(index==0?'${today[index1].paidno}':index==1?'${yesterday[index1].paidno}':'${lastsevendays[index1].paidno}',style: TextStyle(color: Color(0xff2A3747),fontSize: 15.sp,fontWeight:FontWeight.w400,fontFamily: "Mont-ExtraLightDEMO"),),
                      ]

                  ),

                  Text('Mon, October 31,2022   10:00 AM',style: TextStyle(color: Color(0xffF0536B),fontSize: 12.sp,fontWeight:FontWeight.w400,fontFamily: "Mont-ExtraLightDEMO"),),


                ]
            )

          ],
        ):Container(),
        //SizedBox(height: 10.h,),
       control==true? Row(

          children: [

            SizedBox(width: 30.w,),
            Image.asset('images/quickinvoice.png'),
            SizedBox(width: 13.w,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Quick Invoice Raisedd ${index==0?'${today[index1].paidno}':index==1?'${yesterday[index1].paidno}':'${lastsevendays[index1].paidno}'}',style: TextStyle(color: Color(0xff2A3747),fontSize: 15.sp,fontWeight:FontWeight.w400,fontFamily: "Mont-ExtraLightDEMO"),),

                  Text('Mon, October 31,2022   10:00 AM',style: TextStyle(color: Color(0xffF0536B),fontSize: 12.sp,fontWeight:FontWeight.w400,fontFamily: "Mont-ExtraLightDEMO"),),


                ]
            )

          ],
        ):Container(),
        SizedBox(height: 10.h,),
      ],
    );
  })



          ],
        );
      })





],
),
        )

        ),
    );

  }
}
