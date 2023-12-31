import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task/Screen/mainScreen.dart';
import 'package:task/Screen/podcasts.dart';
import 'package:task/Screen/searchScreen.dart';
import 'package:task/Screen/settingsScreen.dart';
import 'package:task/Themes/style.dart';
import 'package:task/screen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => MainScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/HomeScreen': (context) => HomeScreen(),
          '/SearchScreen': (context) => SearchScreen(),
          '/PodcastsScreen': (context) => PodcastsScreen(),
          '/SettingsScreen': (context) => SettingsScreen(),
        },
      );
    });
  }
}
