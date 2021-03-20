import 'package:flutter/material.dart';
import '../models/location_data.dart';

class DisplayCard extends StatelessWidget {
  final LocationData locationData;
  DisplayCard(this.locationData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Column(
                children: [
                  Text(
                    "${locationData.name}",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    "${locationData.address}",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.red[300]),
                  ),
                  Text(
                    "${locationData.package}",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  Text(
                    "${locationData.summary}",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.stretch,
              ),
            ),
          ),
          Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage('${locationData.thumbnail}')))),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
