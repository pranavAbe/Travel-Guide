import 'package:flutter/material.dart';

import '../models/location_data.dart';
import '../screens/display_card.dart';
import '../utils/build_bottom_sheet.dart';

class BuildCard extends StatelessWidget {
  final LocationData locationData;
  BuildCard(this.locationData);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 7,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.grey[850],
        child: DisplayCard(locationData),
        onTap: () {
          double sheetHeight = MediaQuery.of(context).size.height - 107;
          buildBottomSheet(context, locationData, sheetHeight);
        },
      ),
    );
  }
}
