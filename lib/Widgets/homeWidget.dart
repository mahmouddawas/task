import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:task/Controls/providerModel.dart';
import 'package:task/Screen/nowPlayingScreen.dart';
import 'package:task/Themes/style.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<String> iconsList = [
    'assets/icons/Pause.svg',
    'assets/icons/_ionicons_svg_ios-play.svg'
  ];
  List<String> titleList = [
    'Bailando',
    'Caando Me Enamoron',
    'Dirty Dancer',
    'Finally Found You',
    'Heart Attack',
    'Heartbeat',
    'Hero',
    'Move To Miami',
    'Heart Attack',
    'Heartbeat',
    'Hero',
    'Move To Miami',
    'Heart Attack',
    'Heartbeat',
    'Hero',
    'Move To Miami'
  ];
  List<String> subTitleList = [
    'Billy Ray Cyrus',
    'Mabel',
    'Alec Benjamin',
    'Alec Benjamin',
    'Bazzi',
    'Jonas Brothers',
    'BLACKPINK',
    'Bazzi',
    'Jonas Brothers',
    'BLACKPINK',
    'BLACKPINK',
    'Bazzi',
    'Jonas Brothers',
    'BLACKPINK',
    'BLACKPINK',
    'Bazzi'
  ];
  List<String> timeList = [
    '3.58',
    '2.46',
    '4.12',
    '4.12',
    '3.12',
    '3.56',
    '2.47',
    '2.47',
    '3.12',
    '3.56',
    '2.47',
    '3.12',
    '3.56',
    '2.47',
    '2.47',
    '2.47'
  ];
  Stream<int> getSecondsFromCurrentMinute() async* {
    final now = DateTime.now();
    final seconds = now.second;
    yield seconds;
    await Future.delayed(Duration(seconds: 1 - seconds));
    yield* getSecondsFromCurrentMinute();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  itemCount: titleList.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      shape: i == 4
                          ? RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ))
                          : null,
                      tileColor: i == 4 ? Colors.grey.shade700 : PrimaryColor,
                      leading: GestureDetector(
                        onTap: (() {}),
                        child: CircleAvatar(
                          backgroundColor: i == 4 ? PinkColor : WhiteColor,
                          child: i == 4
                              ? SvgPicture.asset(iconsList[0])
                              : SvgPicture.asset(iconsList[1]),
                        ),
                      ),
                      title: Text(
                        titleList[i],
                        style: TextStyle(color: WhiteColor),
                      ),
                      subtitle: Text(
                        subTitleList[i],
                        style: TextStyle(color: WhiteColor),
                      ),
                      trailing: Text(
                        timeList[i],
                        style: TextStyle(color: WhiteColor),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NowPlayingScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 6.0,
                      color: PinkColor,
                    ),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent.withOpacity(1),
                      PinkColor,
                      Colors.transparent.withOpacity(1),
                      PrimaryColor,
                    ],
                    stops: [0.0, (100 - 56.23) / 100, (100 - 56.23) / 100, 1.0],
                    end: Alignment.centerRight,
                    begin: Alignment.centerLeft,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: double.infinity,
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                  widthFactor: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 0.1.w),
                      Image.asset(
                        'assets/images/cc3a8569ce2b4d7b7efc05573ba76f9d@3x.png',
                        alignment: Alignment.center,
                        width: 20.w,
                        fit: BoxFit.contain,
                        height: 10.h,
                      ),
                      SizedBox(width: 0.1.w),
                      // Artist
                      Text(titleList[3],
                          style: TextStyle(color: WhiteColor, fontSize: 15.sp)),

                      // Padding between first 2 columns and Icons
                      Expanded(child: SizedBox.expand()),

                      SvgPicture.asset(
                        'assets/icons/Pause.svg',
                        alignment: Alignment.center,
                        width: 30,
                        fit: BoxFit.contain,
                        height: 30,
                      ),
                      //
                      SizedBox(width: 5.w),

                      SvgPicture.asset(
                        'assets/icons/next.svg',
                        alignment: Alignment.center,
                        width: 30,
                        fit: BoxFit.contain,
                        height: 30,
                      ),
                      SizedBox(width: 5.w),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
