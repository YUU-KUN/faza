import 'package:ecommerce_faza/common/my_colors.dart';
import 'package:ecommerce_faza/common/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFE1C4BE),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          height: 400,
          width: double.infinity,
          child: Image.asset(
            'assets/images/products/product_1_big.png',
            width: 500,
          ),
        ),
        const SizedBox(height: 33),
        Container(
          color: MyColors.softGray,
          margin: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Size: ', style: MyStyle.productDetailText),
                  IconButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        const Size(40, 40),
                      ),
                      // padding: MaterialStateProperty.all(
                      //   const EdgeInsets.all(0),
                      // ),
                      // backgroundColor: MaterialStateProperty.all(
                      //   Colors.black,
                      // ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    onPressed: null,
                    icon: Text(
                      'S',
                      style: MyStyle.productDetailText.copyWith(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFF8A961)),
                    ),
                  ),
                  IconButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        const Size(40, 40),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    onPressed: null,
                    icon: Text(
                      'M',
                      style: MyStyle.productDetailText.copyWith(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFF8A961)),
                    ),
                  ),
                  IconButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        const Size(40, 40),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    onPressed: null,
                    icon: Text(
                      'L',
                      style: MyStyle.productDetailText.copyWith(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFF8A961)),
                    ),
                  ),
                  IconButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        const Size(40, 40),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    onPressed: null,
                    icon: Text(
                      'XL',
                      style: MyStyle.productDetailText.copyWith(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFF8A961)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 53),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Girl Pink Backpack', style: MyStyle.productDetailTitle),
                  Text('Rp.50.000', style: MyStyle.productDetailPrice)
                ],
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/icons/star.png'),
                  Image.asset('assets/images/icons/star.png'),
                  Image.asset('assets/images/icons/star.png'),
                  Image.asset('assets/images/icons/star.png'),
                  Image.asset('assets/images/icons/star.png'),
                ],
              ),
              const SizedBox(height: 18),
              Text(
                  'nice and cute bag for school children, and very good material, suitable for traveling traveling',
                  style: MyStyle.productDetailDesc)
            ],
          ),
        ),
        const SizedBox(height: 62),
        Container(
          height: 56,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyColors.primaryOrange,
                  ),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: null,
                child: Row(
                  children: [
                    Image.asset('assets/images/icons/btn-cart.png'),
                    Text(
                      'Add To Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.inter().fontFamily,
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyColors.black,
                  ),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: null,
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
