import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flapibird/shared/app_color.dart';
import 'package:flutter/material.dart';

class BubbleTabBar extends StatelessWidget {
  final List<Widget> tabs;

  const BubbleTabBar({Key key, this.tabs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: new BubbleTabIndicator(
        indicatorHeight: 25.0,
        indicatorColor: AppColor.purple,
        tabBarIndicatorSize: TabBarIndicatorSize.tab,
      ),
      tabs: tabs,
    );
  }
}
