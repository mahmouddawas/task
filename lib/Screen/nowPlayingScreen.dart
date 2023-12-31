import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/Widgets/nowPlayingWidget.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NowPlayingWidget();
  }
}
