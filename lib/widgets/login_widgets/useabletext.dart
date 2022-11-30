import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class useabletextfield extends StatelessWidget {
  final String? title;
  final Color? color;
  final FontWeight? fon;
  final String? fam;
  final double? size;
  final int? center;
  final bool? underlin;
  const useabletextfield({Key? key,this.title,this.color,this.fon,this.fam,this.size,this.center,this.underlin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textAlign:center==1?TextAlign.center:null,title.toString(),style: TextStyle(fontWeight: fon,color:color,fontFamily:fam ,fontSize:size!=null ?size!.sp :null,decoration:underlin==true? TextDecoration.underline:null, ),);
  }
}
