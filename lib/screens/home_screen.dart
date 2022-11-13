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
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

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
            // FittedBox(
            //   child: Container(
            //     padding: EdgeInsets.all(3.5),
            //     child: Row(
            //       children: [
            //         Container(
            //           width: size.width * .44,
            //           padding:
            //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.horizontal(
            //                 left: Radius.circular(AppLayout.getHeight(50))),
            //             color: Colors.grey,
            //           ),
            //           child: Center(
            //               child: Text(
            //             'All',
            //             style: Styles.headLineStyle,
            //           )),
            //         ),
            //         Container(
            //           width: size.width * .44,
            //           padding:
            //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.horizontal(
            //                 left: Radius.circular(AppLayout.getHeight(50))),
            //             color: Colors.transparent,
            //           ),
            //           child: Center(
            //               child:
            //                   Text('Living Room', style: Styles.headLineStyle)),
            //         ),
            //         Container(
            //           width: size.width * .44,
            //           padding:
            //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.horizontal(
            //                 right: Radius.circular(AppLayout.getHeight(50))),
            //             color: Colors.transparent,
            //           ),
            //           child: Center(
            //               child: Text('Bedroom', style: Styles.headLineStyle)),
            //         ),
            //         Container(
            //           width: size.width * .44,
            //           padding:
            //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.horizontal(
            //                 left: Radius.circular(AppLayout.getHeight(50))),
            //             color: Colors.transparent,
            //           ),
            //           child: Center(
            //             child: Text('Dining Room', style: Styles.headLineStyle),
            //           ),
            //         ),
            //       ],
            //     ),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            //       color: Color(0xFFF4F6FD),
            //     ),
            //   ),
            // ),
            TabbarHome(),
            // TabBar(

            //   controller: _tabController,
            //   isScrollable: true,
            //   indicatorColor: Styles.kBrownColor,
            //   splashBorderRadius: BorderRadius.circular(20),
            //   labelPadding: const EdgeInsets.symmetric(horizontal: 14.0),
            //   indicator: BoxDecoration(
            //     color: Styles.kBrownColor,
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   labelStyle: const TextStyle(fontSize: 12),
            //   unselectedLabelColor: Styles.kBrownColor,
            //   padding: const EdgeInsets.only(left: 14.0),
            //   // controller: _tabController,
            //   // indicatorColor: Colors.transparent,
            //   // labelColor: const Color(0xFFC88D67),
            //   // isScrollable: true,
            //   // labelPadding: const EdgeInsets.only(right: 24),
            //   // unselectedLabelColor: const Color(0xFFCDCDCD),
            //   tabs: const [
            //     Tab(
            //       text: 'All',
            //     ),
            //     Tab(
            //       text: 'Living Room',
            //     ),
            //     Tab(
            //       text: 'Bedroom',
            //     ),
            //     Tab(
            //       text: 'Dining Room',
            //     ),
            //     Tab(
            //       text: 'Kitchen',
            //     ),
            //   ],
            // ),
            Gap(10),
            Text(
              'Recommended Furnitures',
              style: TextStyle(
                color: Color(0XFF4A4543),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(10),
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
