import 'package:fic_furniture_shop_windy/screens/view/furniture_name_and_price.dart';
import 'package:fic_furniture_shop_windy/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FurnitureDetail extends StatelessWidget {
  final String assetPath;
  final String cookieprice;
  final String cookiename;

  const FurnitureDetail({
    Key? key,
    required this.assetPath,
    required this.cookieprice,
    required this.cookiename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent.withOpacity(0),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Detail',
          style: Styles.headLineStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.red.shade400,
                ),
                onPressed: () {},
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.all(20),
            height: 500,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(assetPath),
              ),
            ),
          ),

          Expanded(
            child: Container(
              height: height,
              transform: Matrix4.translationValues(0.0, -25, 0.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(300),
                ),
                color: Color(0XFFFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const HandleContainer(),

                  // FurnitureNameAndPrice(
                  //   furniturename: furn,
                  //   furnitureprice: ,
                  // ),
                  // const FurnitureColor(),
                  // const FurnitureQuality(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 28.0,
                    ),
                    child: Text(
                      'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                      style: TextStyle(
                        // color: kBlackColor.withOpacity(0.3),
                        color: Color(0XFF000000).withOpacity(0.3),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        backgroundColor: Styles.kBrownColor,
                      ),
                      child: const Text(
                        'ADD TO CART',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // SizedBox(height: 16.0),

          // Container(
          //   child: Material(
          //     borderRadius: const BorderRadius.only(
          //         topLeft: Radius.circular(16.0),
          //         topRight: Radius.circular(16.0)),
          //     elevation: 12.0,
          //     // child: Text('asdad'),
          //     child: Padding(
          //       padding: const EdgeInsets.all(12.0),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Text(
          //                 'WoodenCoff',
          //                 style: Styles.headLineStyle,
          //               ),
          //               Text(
          //                 '\$240',
          //                 style: Styles.headLineStyle,
          //               ),
          //             ],
          //           ),
          //           // StarRatingBar(
          //           //   rating: rating,
          //           //   color: ColorPallete.ratingColor,
          //           //   onRatingChanged: (rating) => setState(
          //           //     () => this.rating = rating,
          //           //   ),
          //           // ),

          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Text(
          //                 'Choose a color:',
          //                 style: Styles.headLineStyle,
          //               ),
          //               // ColorChooser(
          //               //   listColor: data,
          //               // ),
          //             ],
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Text(
          //                 'Select Quantity:',
          //                 style: Styles.headLineStyle,
          //               ),
          //               // const CartCounter(),
          //             ],
          //           ),
          //           const Gap(20),
          //           Text(
          //             'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
          //             style: Styles.headLineStyle3,
          //           ),
          //           const Gap(20),
          //           ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //               backgroundColor: Styles.bgColor,
          //               minimumSize: Size.fromHeight(40),
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(18.0),
          //               ),
          //             ),
          //             onPressed: () {},
          //             child: Text(
          //               'ADD TO CART',
          //               style: Styles.headLineStyle3,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // child: Hero(
          //   tag: assetPath,
          //   child: Container(
          //     height: 400,
          //     width: 400,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(32),
          //       image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: AssetImage(assetPath),
          //       ),
          //     ),
          //   ),
          // ),

          // Center(
          //   child: Text(
          //     'Rp $cookieprice',
          //     style: TextStyle(
          //       fontFamily: 'Varela',
          //       fontSize: 20.0,
          //       fontWeight: FontWeight.bold,
          //       color: const Color(0xFFF17532),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 16.0),
          // Center(
          //   child: Text(
          //     cookiename,
          //     style: TextStyle(
          //         color: const Color(0xFF575E67),
          //         fontFamily: 'Varela',
          //         fontSize: 24.0),
          //   ),
          // ),
          // SizedBox(height: 16.0),
          // Center(
          //   child: SizedBox(
          //     width: MediaQuery.of(context).size.width - 52.0,
          //     child: Text(
          //       'Bolu atau kue bolu adalah kue berbahan dasar tepung, gula, dan telur. Kue bolu dan cake umumnya dimatangkan dengan cara dipanggang di dalam oven, walaupun ada juga bolu yang dikukus',
          //       maxLines: 4,
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         fontFamily: 'Varela',
          //         fontSize: 16.0,
          //         color: const Color(0xFFB4B8B9),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 16.0),
          // Center(
          //   child: Container(
          //     width: MediaQuery.of(context).size.width - 100.0,
          //     height: 52.0,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(24.0),
          //       color: const Color(0xFFF17532),
          //     ),
          //     child: Center(
          //       child: InkWell(
          //         onTap: () async {
          //           // await FlutterLaunch.launchWhatsapp(
          //           //   phone: '6285640899224',
          //           //   message:
          //           //       'Hi Bahri Cakery,Saya mau order $cookiename untuk hari ini, apa bisa diantar kerumah?',
          //           // );
          //         },
          //         // child: Row(
          //         //   mainAxisAlignment: MainAxisAlignment.center,
          //         //   children: [
          //         //     Icon(
          //         //       FontAwesomeIcons.whatsapp,
          //         //       size: 32,
          //         //       color: Colors.white,
          //         //     ),
          //         //     SizedBox(
          //         //       width: 8,
          //         //     ),
          //         //     Text(
          //         //       'Pesan via Whatsapp',
          //         //       style: TextStyle(
          //         //         fontFamily: 'Varela',
          //         //         fontSize: 16.0,
          //         //         fontWeight: FontWeight.bold,
          //         //         color: Colors.white,
          //         //       ),
          //         //     ),
          //         //   ],
          //         // ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
