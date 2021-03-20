import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../models/location_data.dart';

class LocationDetail extends StatelessWidget {
  final LocationData locationData;
  LocationDetail(this.locationData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Image.asset('${locationData.headerImage}'),
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${locationData.name}",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 34,
                                    fontWeight: FontWeight.w800),
                              ),
                              Container(
                                child: Text(
                                  "${locationData.address}",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red[300]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      LikeButton(
                        size: 60,
                        likeCount: 0,
                        countPostion: CountPostion.bottom,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0)),
              Container(
                  child: Text(
                    "${locationData.package}",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
              Divider(height: 30, color: Colors.white, thickness: 2.5),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  margin: EdgeInsets.all(10),
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          "SUMMARY",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "${locationData.summary}",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          "DID YOU KNOW",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "${locationData.funfact}",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          "HISTORY",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "${locationData.history}",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.stretch,
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
