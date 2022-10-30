import 'package:ecommerce_faza/common/my_colors.dart';
import 'package:ecommerce_faza/common/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @protected
  void initState() {
    debugPrint('initState()');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.white,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          'My Cart',
          style: MyStyle.pageTitle.copyWith(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFF4F2F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 15,
                right: 15,
                left: 40,
              ),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Image.asset('assets/images/products/product_1.png'),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Girl Pink Backpack',
                                style: MyStyle.productCartTitle,
                              ),
                              const SizedBox(height: 12),
                              Row(children: [
                                Text('Rp.50.000', style: MyStyle.productPrice),
                                const SizedBox(width: 5),
                                Text('Rp.65.000',
                                    style: MyStyle.productPriceDiscount)
                              ])
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                    'assets/images/icons/trash.png'),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove,
                                color: MyColors.primaryOrange),
                          ),
                          const Text('01'),
                          IconButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  MyColors.primaryOrange),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.all(5),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                MyColors.primaryOrange,
                              ),
                            ),
                            onPressed: null,
                            icon: Icon(
                              Icons.add,
                              color: MyColors.primaryOrange,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
