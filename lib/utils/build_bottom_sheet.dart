import 'package:flutter/material.dart';

import '../models/location_data.dart';
import '../screens/location_detail.dart';

PersistentBottomSheetController buildBottomSheet(
    BuildContext context, LocationData locationData, double sheetHeight) {
  return showBottomSheet(
      shape:
          new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      clipBehavior: Clip.antiAlias,
      context: context,
      builder: (context) => Container(
            height: sheetHeight,
            color: Colors.grey[900],
            child: LocationDetail(locationData),
          ));
}
