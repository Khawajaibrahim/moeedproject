import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moeedproject/widgets/row_widgets.dart';

class AvenueDetails extends StatefulWidget {
  const AvenueDetails({super.key});

  @override
  State<AvenueDetails> createState() => _AvenueDetailsState();
}

class _AvenueDetailsState extends State<AvenueDetails> {
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
              "1718 Jermo Avenue Brooklyn , NY,11235",
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
                Image.network(
                  'https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  height: 150.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      E_row(
                          title: 'Location Address',
                          desc: '1718 Jerome Avenue Brooklyn, NY, 11235'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(
                          title: 'Alternate Address',
                          desc: '1718-1720 Jerome Avenue Brooklyn, NY,11235'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Year Built ', desc: '1718'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(
                          title: 'Unit',
                          desc:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Number of Stories', desc: '2'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'built.sq.Footage', desc: '3,000'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Loot.sq.Footage', desc: '3,000'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Zoning', desc: 'C4-2'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Tax Class', desc: 'Lorem Ipsum '),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Building Class', desc: 'Lorem Ipsum '),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Num of Building', desc: '1'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Purchase Date', desc: '06/01/2021'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Mortgage', desc: '1'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Market Value Total', desc: '100000'),
                      SizedBox(
                        height: 10.h,
                      ),
                      E_row(title: 'Block-Lot', desc: '7622-22'),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
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
