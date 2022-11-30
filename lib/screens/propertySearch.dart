import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/main.dart';

import '../widgets/expansiontile/2DObDetails.dart';
import '../widgets/expansiontile/AvenueDetails.dart';
import '../widgets/expansiontile/addressDetail.dart';
import '../widgets/expansiontile/buildingDetails.dart';
import '../widgets/expansiontile/dOB3Details.dart';
import '../widgets/expansiontile/dOB4Details.dart';
import '../widgets/expansiontile/dOB5Details.dart';
import '../widgets/expansiontile/issuanceDetail.dart';
import '../widgets/expansiontile/ownerDetail.dart';
import '../widgets/expansiontile/riskAssesment.dart';
import '../widgets/expansiontile/rpad_detail.dart';
import '../widgets/expansiontile_list.dart';

class ListItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListItemState();
  }
}

class ListItemState extends State<ListItem> {
  bool isExpand = false;
  @override
  void initState() {
    super.initState();
    isExpand = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Center(
            child: Text(
          'Property Search',
          style: TextStyle(color: Colors.red, fontSize: 19.sp),
        )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: (isExpand == true)
              ? const EdgeInsets.all(12.0)
              : const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.green[200]),
                height: 150.h,
                width: double.infinity,
                child: const Text('Map'),
              ),
              SizedBox(
                height: 40.h,
              ),
              AvenueDetails(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Full Property Info',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              AddressDetails(),
              SizedBox(
                height: 20.h,
              ),
              BuildingDetails(),
              SizedBox(
                height: 20.h,
              ),
              OwnerDetails(),
              SizedBox(
                height: 20.h,
              ),
              RiskAssesment(),
              SizedBox(
                height: 20.h,
              ),
              RpadDetail(),
              SizedBox(
                height: 20.h,
              ),
              IssuanceDetails(),
              SizedBox(
                height: 20.h,
              ),
              DOB2Details(),
              SizedBox(
                height: 20.h,
              ),
              DOB3Details(),
              SizedBox(
                height: 20.h,
              ),
              DOB4Details(),
              SizedBox(
                height: 20.h,
              ),
              DOB5Details(),
              SizedBox(
                height: 30.h,
              ),
              Container(

                height:45.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: Color(0xffC21A1A),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                    style: ButtonStyle(
                    ),
                    onPressed: () {},
                    child: Text(
                      'Show All Records (6)',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
