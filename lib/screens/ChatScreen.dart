import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';

import '../Models/Message.dart';
import '../widgets/login_widgets/reuseabletextfield.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<Message> messages = [
    
    Message(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.', date: DateTime.now().subtract(Duration(minutes: 120)), isSentbyme: true),
    Message(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Ut enim ad', date: DateTime.now().subtract(Duration(minutes: 40)), isSentbyme: false),
    Message(text: 'Lorem ipsum....', date: DateTime.now().subtract(Duration(seconds: 60)), isSentbyme: true),
    Message(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.', date: DateTime.now().subtract(Duration(minutes: 40)), isSentbyme: false),

    Message(text: 'hi', date: DateTime.now().subtract(Duration(seconds: 60)), isSentbyme: true),
    Message(text: 'hi how are you', date: DateTime.now().subtract(Duration(seconds: 2)), isSentbyme: false),
    Message(text: 'i am good', date: DateTime.now().subtract(Duration(seconds: 3)), isSentbyme: true),
    Message(text: 'hmmm', date: DateTime.now().subtract(Duration(seconds: 4)), isSentbyme: false),
    Message(text: 'hi', date: DateTime.now().subtract(Duration(seconds: 1)), isSentbyme: true),
    Message(text: 'hi how are you', date: DateTime.now().subtract(Duration(seconds: 2)), isSentbyme: false),
    Message(text: 'i am good', date: DateTime.now().subtract(Duration(seconds: 3)), isSentbyme: true),
    Message(text: 'jfdsjfjdslfjdsjfsjdfljsdfjlsdkjfklsdjfljsd', date: DateTime.now().subtract(Duration(seconds: 4)), isSentbyme: false),
    
    
  ].toList();
TextEditingController entertext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDEE),
      body:SafeArea(
        child: Column(
          children: [
            Expanded(child: GroupedListView<Message,DateTime>(
              padding: EdgeInsets.all(8),
             // reverse: true,
             //order:GroupedListOrder.DESC,
              elements: messages,
              groupBy: (message)=>DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message)=>SizedBox(),
              itemBuilder: (context,Message message)=>Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  Row(
               mainAxisAlignment: message.isSentbyme==false?MainAxisAlignment.end:MainAxisAlignment.start,
                    children: [
                      //left person
                   message.isSentbyme?   Column(
                     children: [
                       Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                            ),
                            child: Image.asset(('images/person2.png')),

                          ),
                       SizedBox(height: 6.h,),
                       Text(message.date.hour.toString()+':'+message.date.minute.toString()+' AM',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                     ],
                   ):Row(children: [
                        SizedBox(width: 80.w,),
                        Container()]),
                      message.isSentbyme?SizedBox(width:13.w):SizedBox(),

Flexible(child: Container(

  //height: 89.h,
  margin:message.isSentbyme?EdgeInsets.only(right: 60.w):EdgeInsets.only(left: 20.w),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.r),
    color:message.isSentbyme==true ?const Color(0xff2A3747):Colors.white,
  ),

  child: Padding(
    padding: EdgeInsets.symmetric(horizontal:13.w ,vertical:9.h ),
    child: Text(message.text,style: TextStyle(color: message.isSentbyme==true ?Colors.white:Colors.black),),
  ),
)),

//message.isSentbyme?SizedBox(width:65.w,):SizedBox(),

///right person
                      SizedBox(width: 13.w,),
                      message.isSentbyme==false?   Column(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset(('images/person1.png')),

                          ),
                          SizedBox(height: 6.h,),
                          Text(message.date.hour.toString()+':'+message.date.minute.toString()+' AM',style: TextStyle(color: Colors.black,fontSize: 10.sp),)
                        ],
                      ):Container(),

                      message.isSentbyme==false?SizedBox(width:13.w):SizedBox(),
                    ],
                  ),
                  SizedBox(height:41.h,)

              ]),

            )),

            //textfield code below
            Padding(
              padding: EdgeInsets.only(left:25.w ,right:25.w,bottom: 25.h ),
              child: Container(
                width:342.w,
                height: 57.h,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffFFFFFF),
                ),
                child:Row(
                  children: [

                    SizedBox(width: 20.w,),
                    Container(
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        color: Color(0xffF0536B),
                        shape: BoxShape.circle
                      ),

                      child: Icon(Icons.add,color: Colors.white,size: 30.sp,),
                    ),
SizedBox(width: 10.w,),
                    SizedBox(
                      width: 230.w,
                      child: TextField(
                        controller: entertext,
                        decoration: InputDecoration(
border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 12.sp,fontWeight:FontWeight.w400),
                    hintText: 'Type your message',
                        ),

                        onSubmitted: (text){
                          final message = Message(text: text, date: DateTime.now(), isSentbyme: true);
                          setState(() {
                            messages.add(message);
                            entertext.text = '';
                          });

                        },
                      ),
                    ),

                    //reuseabletextfield(hint: "Please enter your email",txt:entertext,color:0, secure: false,rad:15),
Image.asset('images/smile.png')

                  ],
                ),
              ),
            )


          ],
        ),
      )
    );
  }
}
