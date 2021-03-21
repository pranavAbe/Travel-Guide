import 'package:flutter/material.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black87,
    // brightness: Brightness.values[0],
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    // colorScheme: ColorScheme.light(
    //   primary: Colors.black87,
    //   onPrimary: Colors.black87,
    //   primaryVariant: Colors.black87,
    //   secondary: Colors.red,
    // ),

    // bottomNavigationBarTheme:
    // BottomNavigationBarThemeData(backgroundColor: Colors.black87),
    cardTheme: CardTheme(
      color: Colors.grey[900],
    ),

    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: Colors.white,
    //   ),
    //   subtitle2: TextStyle(
    //     color: Colors.white70,
    //   ),
    // ),
  );
}
