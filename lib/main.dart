import 'package:flutter/material.dart';

import 'models/app_theme.dart';
import 'screens/app.dart';

void main() => runApp(MaterialApp(
    title: 'Location Detail Page',
    debugShowCheckedModeBanner: false,
    //TODO: Add an AMOLED Dark theme
    // darkTheme: AppTheme.darkTheme,
    darkTheme: ThemeData.dark(),
    home: App()));
