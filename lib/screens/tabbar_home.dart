import 'package:fic_furniture_shop_windy/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TabbarHome extends StatefulWidget {
  TabbarHome({Key? key}) : super(key: key);

  @override
  State<TabbarHome> createState() => _TabbarHome();
}

class _TabbarHome extends State<TabbarHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      indicatorColor: Styles.kBrownColor,
      splashBorderRadius: BorderRadius.circular(20),
      labelPadding: const EdgeInsets.symmetric(horizontal: 14.0),
      indicator: BoxDecoration(
        color: Styles.kBrownColor,
        borderRadius: BorderRadius.circular(20),
      ),
      labelStyle: const TextStyle(fontSize: 12),
      unselectedLabelColor: Styles.kBrownColor,
      padding: const EdgeInsets.only(left: 14.0),
      tabs: const [
        Tab(
          text: 'All',
        ),
        Tab(
          text: 'Living Room',
        ),
        Tab(
          text: 'Bedroom',
        ),
        Tab(
          text: 'Dining Room',
        ),
        Tab(
          text: 'Kitchen',
        ),
      ],
    );
  }
}
