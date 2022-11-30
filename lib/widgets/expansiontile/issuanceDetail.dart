import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';

class IssuanceDetails extends StatefulWidget {
  const IssuanceDetails({super.key});

  @override
  State<IssuanceDetails> createState() => _IssuanceDetailsState();
}

class _IssuanceDetailsState extends State<IssuanceDetails> {
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
              "#1 DOB Permit Issuance Details",
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
                  E_row(title: 'Address', desc: 'Lorem Ipsum'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'City/State/zip', desc: 'Brooklyn Lorem Ipsum'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Borough', desc: 'Brooklyn Lorem Ipsum'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Boro/Block/Lo', desc: '3/7462/22'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Lat/Lng', desc: '40.578/-73.9520'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Bin', desc: ''),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Building type', desc: '2'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Community Board', desc: '315'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Residential', desc: ''),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Site Fill', desc: 'Not Applicable'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Non Profile', desc: 'N'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Superintendent', desc: ''),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Owner', desc: 'Joan Lee'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Address', desc: '1719 Lorem Ipsum'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Zip Code', desc: '1719'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Phone', desc: '(646) 226-0477'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Bussiness', desc: 'Lorem Ipsum'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Bussiness Type', desc: 'Lorem Ipsum'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Exp date', desc: '03/02/2021'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Issuance date', desc: '03/02/2021'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Issuance date', desc: '03/02/2021'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Job', desc: ''),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Job Doc', desc: '1'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Job Type', desc: 'A1'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Job Start Doc', desc: 'A1'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Work Type', desc: 'A1'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Permitte', desc: '1718 '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Bussniess', desc: '1718 '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Phone', desc: '1718 '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'License', desc: '1718 '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Sequence', desc: '1718 '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Si-no', desc: '1718 '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Status', desc: '1718 '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Type', desc: 'Equiment Work'),
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
