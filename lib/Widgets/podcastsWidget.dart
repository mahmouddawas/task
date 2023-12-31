import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/Themes/style.dart';

class PodcastsWidget extends StatefulWidget {
  const PodcastsWidget({Key key}) : super(key: key);

  @override
  State<PodcastsWidget> createState() => _PodcastsWidgetState();
}

class _PodcastsWidgetState extends State<PodcastsWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Podcasts",
      style: TextStyle(color: WhiteColor),
    ));
  }
}
