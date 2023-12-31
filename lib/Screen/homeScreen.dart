import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:task/Themes/style.dart';
import 'package:task/widgets/homeWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text(
          "ALL SONGS",
          style: TextStyle(fontSize: 18.sp),
        ),
        actions: [
          IconButton(
            iconSize: 15.sp,
            icon: SvgPicture.asset('assets/icons/_ionicons_svg_ios-search.svg'),
            onPressed: () => {},
          ),
        ],
      ),
      body: HomeWidget(),
    );
  }
}
