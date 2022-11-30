import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';

class RiskAssesment extends StatefulWidget {
  const RiskAssesment({super.key});

  @override
  State<RiskAssesment> createState() => _RiskAssesmentState();
}

class _RiskAssesmentState extends State<RiskAssesment> {
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
              "Risk Assesment",
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
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  E_row(title: 'Latitude', desc: 'Lorem Ipsum '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Longitude', desc: '1718'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Elevated', desc: '22 feet'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Distance to Coast ', desc: '145 feet'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Flood Hazard Zone', desc: 'AE'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Flood Surge Zone', desc: '1'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Distance to Paid FireHouse', desc: '125 feet'),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
