import 'package:ecommerce_faza/common/my_colors.dart';
import 'package:ecommerce_faza/common/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(0),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                onPressed: null,
                icon: const Icon(Icons.menu),
              ),
              IconButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(0),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                onPressed: null,
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 28),
            child: FittedBox(
              child: Image.asset('assets/images/banner/banner_1.png'),
            ),
          ),
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Our Product', style: MyStyle.sectionTitle)],
          ),
          const SizedBox(height: 14),

          Column(
            children: [
              // Expanded(
              //   child: Text('halo', style: MyStyle.pageTitle,),
              //   flex: 2,
              // ),
              // Expanded(
              //   child: Text('halo', style: MyStyle.pageTitle,),
              //   flex: 2,
              // ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    // width: 140,
                    // height: 194,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 5,
                      //     blurRadius: 7,
                      //     offset: const Offset(0, 3),
                      //   ),
                      // ],
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE1C4BE),
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 5,
                                //     blurRadius: 7,
                                //     offset: const Offset(0, 3),
                                //   ),
                                // ],
                              ),
                              child: Image.asset(
                                'assets/images/products/product_1.png',
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(0),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                                onPressed: null,
                                icon: Icon(
                                  Icons.favorite_border,
                                  size: 30.0,
                                  color: MyColors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Girl Pink Backpack',
                          style: MyStyle.productTitle,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text('Rp.50.000', style: MyStyle.productPrice),
                            const SizedBox(width: 12),
                            Text('Rp.65.000',
                                style: MyStyle.productPriceDiscount),
                          ],
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
