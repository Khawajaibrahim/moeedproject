import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';

class BuildingDetails extends StatefulWidget {
  const BuildingDetails({super.key});

  @override
  State<BuildingDetails> createState() => _BuildingDetailsState();
}

class _BuildingDetailsState extends State<BuildingDetails> {
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
              "Building Details",
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
                  E_row(title: 'Year Built', desc: '1718'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Blgd Square Footage', desc: '1718'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Lot Square Footage', desc: '1718'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Number of Stories', desc: '2'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Number of Residenl Unit', desc: '3,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Number of Commerical Unit', desc: '3,000'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Number of Bldgs on Lots', desc: '2'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Contruction Types', desc: 'Lorem Ipsum '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Exterior Wall', desc: 'Lorem Ipsum '),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Lot Frontage', desc: '36'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Lot Depth', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Lot Shape', desc: '1'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Lot Type', desc: '10'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Proximity', desc: 'Not Avaiable'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Building Fortage', desc: '36'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Building Depth', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Resident FAR', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Commercial FAR', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Building Depth', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Zoning', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Tax Class', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Building class', desc: 'S5'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Exterior Conditions', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Style', desc: ''),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Garage Type', desc: ''),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Garage Sq. Footage', desc: '45'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Basement Grade', desc: 'None'),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Basement Sq. Footage', desc: ''),
                  SizedBox(
                    height: 10.h,
                  ),
                  E_row(title: 'Basement Type', desc: 'None'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
