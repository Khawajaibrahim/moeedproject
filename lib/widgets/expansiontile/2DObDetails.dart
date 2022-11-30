import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';

class DOB2Details extends StatefulWidget {
  const DOB2Details({super.key});
  @override
  State<DOB2Details> createState() => _DOB2DetailsState();
}

class _DOB2DetailsState extends State<DOB2Details> {
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
              "#2 DOB Permit Issuance Details",
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) => Container(
                        child: Column(
                          children: [
                            E_row(
                                title: 'Lorem Ipsum',
                                desc:
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
