import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:task/Themes/style.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class NowPlayingWidget extends StatefulWidget {
  const NowPlayingWidget({Key key}) : super(key: key);

  @override
  State<NowPlayingWidget> createState() => _NowPlayingWidgetState();
}

class _NowPlayingWidgetState extends State<NowPlayingWidget> {
  bool checkPlay = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: WhiteColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Now Playing',
                    style: TextStyle(color: WhiteColor, fontSize: 10.sp),
                  ),
                  IconButton(
                    iconSize: 15.sp,
                    icon: SvgPicture.asset(
                        'assets/icons/_ionicons_svg_ios-search.svg'),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(100.sp),
                  child: Image.asset(
                    'assets/images/cc3a8569ce2b4d7b7efc05573ba76f9d@3x.png',
                    alignment: Alignment.center,
                    width: 100.w,
                    fit: BoxFit.contain,
                    height: 200.h,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Add to Favorite Songs.svg',
                            alignment: Alignment.center,
                            width: 5.w,
                            fit: BoxFit.contain,
                            height: 2.h,
                          ),
                          Text('Click Me'),
                        ],
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent.withOpacity(0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: WhiteColor))))),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Shuffle18.svg',
                            alignment: Alignment.center,
                            width: 5.w,
                            fit: BoxFit.contain,
                            height: 2.h,
                          ),
                          Text('SHUFFLE PLAY'),
                        ],
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(PinkColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )))),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Finally Found You",
              style: TextStyle(color: WhiteColor, fontSize: 15.sp),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "enrique iglesias",
              style: TextStyle(color: WhiteColor, fontSize: 10.sp),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Text(
                      "0.00",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: ProgressBar(
                      thumbColor: PinkColor,
                      progressBarColor: PinkColor,
                      baseBarColor: Colors.grey,
                      progress: Duration(milliseconds: 2000),
                      buffered: Duration(milliseconds: 3000),
                      total: Duration(milliseconds: 5000),
                      onSeek: (duration) {
                        print('User selected a new time: $duration');
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Text(
                      "3.40",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Image.asset(
                      'assets/images/_ionicons_svg_ios-skip-backward@3x.png',
                      alignment: Alignment.center,
                      width: 3.w,
                      fit: BoxFit.contain,
                      height: 5.h,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Image.asset(
                      'assets/images/_ionicons_svg_ios-rewind@3x.png',
                      alignment: Alignment.center,
                      width: 5.w,
                      fit: BoxFit.contain,
                      height: 5.h,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkPlay = !checkPlay;
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.17,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: WhiteColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Image.asset(
                          checkPlay
                              ? 'assets/images/_ionicons_svg_ios-play@3x.png'
                              : 'assets/images/Group 3874@3x.png',
                          alignment: Alignment.center,
                          color: Colors.black,
                          width: 5.w,
                          fit: BoxFit.contain,
                          height: 5.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Image.asset(
                      'assets/images/_ionicons_svg_ios-fastforward@3x.png',
                      alignment: Alignment.center,
                      width: 5.w,
                      fit: BoxFit.contain,
                      height: 5.h,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Image.asset(
                      'assets/images/_ionicons_svg_ios-skip-forward@3x.png',
                      alignment: Alignment.center,
                      width: 3.w,
                      fit: BoxFit.contain,
                      height: 5.h,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
