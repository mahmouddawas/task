import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/Widgets/podcastsWidget.dart';

class PodcastsScreen extends StatelessWidget {
  const PodcastsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PodcastsWidget();
  }
}
