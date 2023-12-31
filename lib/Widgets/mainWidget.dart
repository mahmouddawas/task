import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/Screen/homeScreen.dart';
import 'package:task/Screen/podcasts.dart';
import 'package:task/Screen/searchScreen.dart';
import 'package:task/Screen/settingsScreen.dart';
import 'package:task/Themes/style.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController _tabController;
  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        _tabController.index = index;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _tabController.addListener(() {
      if (_tabController.index == 2) {
        setState(() {
          _tabController.index = _tabController.previousIndex;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _selectedIndex,
      length: 5,
      child: Scaffold(
        bottomNavigationBar: TabBar(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            controller: _tabController,
            onTap: (value) {
              if (value == 2) {}
            },
            labelColor: WhiteColor,
            indicatorColor: PinkColor,
            tabs: [
              Tab(
                child: Icon(
                  Icons.home,
                  color: WhiteColor,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.abc,
                  color: WhiteColor,
                ),
              ),
              Tab(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                      ),
                      child: Icon(
                        Icons.headset,
                        color: WhiteColor,
                      ))),
              Tab(child: SvgPicture.asset('assets/icons/FLOW ICON.svg')),
              Tab(
                child: Image.asset(
                  'assets/images/Path 27872.png',
                  color: WhiteColor,
                ),
              ),
            ]),
        backgroundColor: PrimaryColor,
        body: TabBarView(
          controller: _tabController,
          children: [
            HomeScreen(),
            SearchScreen(),
            Container(),
            PodcastsScreen(),
            SettingsScreen()
          ],
        ),
      ),
    );
  }
}
