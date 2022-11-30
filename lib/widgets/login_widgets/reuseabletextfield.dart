import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class reuseabletextfield extends StatefulWidget {
  final String? hint;
  TextEditingController? txt;
  final int? color;
  final bool secure;
  final IconData? icon;
  final IconData? preicon;
  final double? rad;
  final Color? col;
   double? hintsize;
  final ValueChanged<String>? onChanged;
  final  bool? keyboardnum;

   reuseabletextfield({Key? key,this.hint,this.color,this.txt,required this.secure,this.icon,this.preicon,this.rad,this.col,this.hintsize,this.onChanged,this.keyboardnum}) : super(key: key);

  @override
  State<reuseabletextfield> createState() => _reuseabletextfieldState();
}

class _reuseabletextfieldState extends State<reuseabletextfield> {
  String s ="";
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:widget.onChanged,

      controller: widget.txt,
        obscureText: widget.secure,
        keyboardType:widget.keyboardnum==true ?TextInputType.number:null,
        style: TextStyle(fontSize: 16.0.sp,  color: Colors.black,fontFamily: "Nexa Light"),
        decoration: InputDecoration(
filled: true,

            fillColor: Color(0xffFFE7F1).withOpacity(0.5),
            hintText: widget.hint,



            suffixIcon:Icon(widget.icon,color: Colors.blue,size: 30.sp,) ,
prefixIcon: Icon(widget.preicon,color:Colors.blue),
            hintStyle: TextStyle(fontSize: widget.hintsize!=null?widget.hintsize?.sp:null,fontWeight: FontWeight.w400, color: Color(0xff80838EA1),fontFamily: "Poppins"),
            border: OutlineInputBorder(),
          enabledBorder:  OutlineInputBorder(
borderSide: BorderSide(color: Color(0xffFFCDD6)),
            borderRadius: BorderRadius.circular(widget.rad!=null?widget.rad!.r:8.r)

          ),
focusedBorder: OutlineInputBorder(

    borderSide: BorderSide(color: Color(0xffFFCDD6)),
    borderRadius: BorderRadius.circular(widget.rad!=null?widget.rad!.r:8.r)



)
        )

    );
  }
}
