import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'dart:collection';

import '../models/location_data.dart';
import '../utils/build_bottom_sheet.dart';

class Search extends SearchDelegate<String> {
  final List<String> locationNames = locationDataList
      .map((locationData) => locationData.name.titleCase)
      .toList();
  final List<String> locationAddresses = locationDataList
      .map((locationData) => locationData.address.titleCase)
      .toList();
  final List<String> locationPackages =
      locationDataList.map((locationData) => locationData.package).toList();

  String result;

  // TODO: Implement recent search history
  Queue searchHistory = new Queue();

  void pushSearchHistory(String resultToBePushed) {
    if (searchHistory.length <= 7) {
      searchHistory.addFirst(resultToBePushed);
    } else {
      searchHistory.removeLast();
      searchHistory.addFirst(resultToBePushed);
    }
  }

  @override
  // To change the search query styling
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context).copyWith(
      inputDecorationTheme: InputDecorationTheme(border: InputBorder.none),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontFamily: 'Roboto',
          letterSpacing: 1.5,
        ),
      ),
    );
    assert(theme != null);
    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // To implement the actions of the Search Bar
    return [
      IconButton(
          icon: Icon(Icons.clear_rounded, color: Colors.white, size: 30),
          onPressed: () {
            query = "";
            showSuggestions(context);
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // To show the leading icon on the left of the Search Bar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: transitionAnimation,
            size: 30,
            color: Colors.white),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // To show the full results based on the search

    final resultList = query.isEmpty
        ? locationNames
        : locationNames
            .where((p) => p.toLowerCase().contains(query.toLowerCase()))
            .toList();

    final locationDataResults = resultList
        .map((result) => (locationDataList
            .where((locationData) =>
                locationData.name.contains(result.toUpperCase()))
            .toList()))
        .toList()[0];

    return ListView.builder(
      itemCount: resultList.length,
      itemBuilder: (context, index) => Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: Colors.grey[700],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
              leading: Icon(Icons.location_on_rounded, size: 45),
              title: Text(
                locationDataResults[index].name,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                locationDataResults[index].address +
                    '\n' +
                    locationDataResults[index].package,
                style: TextStyle(
                    color: Colors.red[300],
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {
                result = resultList.elementAt(index);
                double sheetHeight = MediaQuery.of(context).size.height;
                buildBottomSheet(
                    context,
                    locationDataList
                        .where((locationData) =>
                            locationData.name.contains(result.toUpperCase()))
                        .toList()[0],
                    sheetHeight);
              }),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // To show the suggestions based on the search

    final suggestionList = query.isEmpty
        ? searchHistory.toList() + locationNames
        : (searchHistory.toList() + locationNames)
            .where((p) => p.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => InkWell(
            child: Container(
                margin: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 26),
                      child: Icon(Icons.history_rounded, size: 30),
                    ),
                    SubstringHighlight(
                      text: suggestionList[index],
                      term: query,
                      textStyleHighlight: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.5,
                      ),
                      textStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.5,
                      ),
                    )
                  ],
                )),
            onTap: () {
              result = suggestionList.elementAt(index);
              query = result;
              pushSearchHistory(query);
              showResults(context);
            }));
  }
}
