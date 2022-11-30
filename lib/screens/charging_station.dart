import 'package:flutter/material.dart';

import '../widgets/expansiontile_list.dart';
class charging_station extends StatefulWidget {
  const charging_station({Key? key}) : super(key: key);

  @override
  State<charging_station> createState() => _charging_stationState();
}

class _charging_stationState extends State<charging_station> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            expansiontilelist(title:"ATM/Bank/Exchange"),
            expansiontilelist(title:"Business & Services"),
            expansiontilelist(title:"Chemist’s"),
            expansiontilelist(title:"Coffe/Tea"),
            expansiontilelist(title:"DIY/Garden Centre"),
            expansiontilelist(title:"Hospital or Healthcare Facility"),
            expansiontilelist(title:"Going Out"),
            expansiontilelist(title:"Kiosk/24-7/Convenience Store"),

          ],
        ),
      )
    );
  }
}
