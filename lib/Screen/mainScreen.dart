import 'package:flutter/material.dart';
import 'package:task/Widgets/mainWidget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with AutomaticKeepAliveClientMixin<MainScreen> {
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return MainWidget();
  }
}
