import 'package:fic_furniture_shop_windy/screens/furniture_page.dart';
import 'package:fic_furniture_shop_windy/screens/tabbar_home.dart';
import 'package:fic_furniture_shop_windy/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import '../utils/app.layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        appBar: AppBar(
          backgroundColor: Styles.bgColor,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.sort,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
          title: Text(
            'Home',
            style: Styles.headLineStyle,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search_rounded,
                color: Color(0xFF545D68),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(10)),
            Text(
              'Discover the most\n modern furniture',
              style: Styles.headLineStyle.copyWith(fontSize: 25),
            ),
            Gap(AppLayout.getHeight(20)),
            TabbarHome(),
            const Gap(10),
            const Text(
              'Recommended Furnitures',
              style: TextStyle(
                color: Color(0XFF4A4543),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(10),
            SizedBox(
              height: MediaQuery.of(context).size.height - 160.0,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  FurniturePage(),
                  FurniturePage(),
                  FurniturePage(),
                  FurniturePage(),
                  FurniturePage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
