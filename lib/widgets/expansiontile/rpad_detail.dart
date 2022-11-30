import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';

class RpadDetail extends StatefulWidget {
  const RpadDetail({super.key});

  @override
  State<RpadDetail> createState() => _RpadDetailState();
}

class _RpadDetailState extends State<RpadDetail> {
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
              "Rpad Detail",
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
                  E_row(
                      title: 'Current Market Assessed Land Value',
                      desc: '238,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Market Assessed Total Value',
                      desc: '238,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Actual Assessed Land Value',
                      desc: '38,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Actual Assessed total Value',
                      desc: '68,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Actual Exemption total Value', desc: '0'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Transnational Assessed Land Value',
                      desc: '7031'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Transnational Assessed Total Value',
                      desc: '37031'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Transnational Exemption Total Value',
                      desc: '0'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Taxable Assessed Total Value',
                      desc: '37031'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(
                      title: 'Current Taxable Exemption Total Value',
                      desc: '0'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Property Tax Class', desc: '1'),
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
