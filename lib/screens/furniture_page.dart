import 'package:fic_furniture_shop_windy/screens/furniture_detail.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../data/furniture.dart';

class FurniturePage extends StatelessWidget {
  const FurniturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: 80,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return _buildCard(listCakes[index], context);
            // return _buildCard(listCakes[index], context);
          },
          itemCount: listCakes.length,
        ),
      ),
    );
  }

  Widget _buildCard(
    Furniture funit,
    context,
  ) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return FurnitureDetail(
              assetPath: funit.image,
              cookieprice: funit.price,
              cookiename: funit.name,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // Padding(
              //   padding: EdgeInsets.only(
              //     right: 8,
              //     top: 8,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       funit.isFavorite
              //           ? const Icon(
              //               Icons.favorite,
              //               color: Color(0xFFEF7532),
              //             )
              //           : const Icon(
              //               Icons.favorite_border,
              //               color: Color(0xFFEF7532),
              //             )
              //     ],
              //   ),
              // ),
              Container(
                height: 163,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(funit.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),

              // Center(
              //   child: Text(
              //     'Rp ${funit.price}',
              //     style: TextStyle(
              //         color: const Color(0xFFCC8053),
              //         fontFamily: 'Varela',
              //         fontSize: 16),
              //   ),
              // ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 14, right: 18.0, bottom: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          funit.name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: const Color(0xFF575E67),
                              fontFamily: 'Varela',
                              fontSize: 14),
                        ),
                        const Gap(10),
                        Text(
                          'Rp ${funit.price}',
                          style: TextStyle(
                              color: const Color(0xFFCC8053),
                              fontFamily: 'Varela',
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/ic_star_filled.png',
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${funit.rating}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFFBBBBBB),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Container(
              //     color: const Color(0xFFEBEBEB),
              //     height: 1.0,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 4),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Row(
              //         children: [
              //           Icon(
              //             Icons.chat,
              //             color: const Color(0xFFD17E50),
              //             size: 16,
              //           ),
              //           SizedBox(
              //             width: 8,
              //           ),
              //           Text(
              //             'Chat',
              //             style: TextStyle(
              //                 fontFamily: 'Varela',
              //                 color: const Color(0xFFD17E50),
              //                 fontSize: 12),
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         width: 16,
              //       ),
              //       Row(
              //         children: [
              //           Icon(
              //             Icons.remove_circle_outline,
              //             color: const Color(0xFFD17E50),
              //             size: 16,
              //           ),
              //           SizedBox(
              //             width: 8,
              //           ),
              //           Text(
              //             '3',
              //             style: TextStyle(
              //                 fontFamily: 'Varela',
              //                 color: const Color(0xFFD17E50),
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 12),
              //           ),
              //           SizedBox(
              //             width: 8,
              //           ),
              //           Icon(
              //             Icons.add_circle_outline,
              //             color: const Color(0xFFD17E50),
              //             size: 16,
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
