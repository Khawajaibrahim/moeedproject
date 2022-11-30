import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';

class OwnerDetails extends StatefulWidget {
  const OwnerDetails({super.key});

  @override
  State<OwnerDetails> createState() => _OwnerDetailsState();
}

class _OwnerDetailsState extends State<OwnerDetails> {
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
              "Owner's Details",
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
                  E_row(title: 'Name ', desc: 'Lorem Ipsum '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Phone', desc: '1718'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Date Purchased', desc: '06/01/22'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Record Date', desc: '06/01/22'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Purchase Price ', desc: '13,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Market Value', desc: '113,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Mortagege Amount', desc: '125000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Mortagege Value', desc: '125000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Mortagege Date', desc: '12/5/22'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Mortagege Name', desc: 'Lorem Ipsum'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Estimated Tax', desc: '25,000'),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
