import 'package:ecommerce_faza/common/my_colors.dart';
import 'package:ecommerce_faza/common/my_font_size.dart';
import 'package:ecommerce_faza/common/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: MyColors.white,
          shadowColor: Colors.transparent,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          title: Text(
            'Beli Langsung',
            style: MyStyle.pageTitle.copyWith(color: Colors.black),
          ),
        ),
        body: Container(
          color: MyColors.white,
          padding: const EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        Image.asset('assets/images/icons/basket.png'),
                        const SizedBox(width: 7),
                        Wrap(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Ini halaman terakhir dari proses belanjaanmu',
                                  style: MyStyle.regularText.copyWith(
                                    fontSize: MyFontSize.text_12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  // Product Container
                  Container(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      right: 15,
                      left: 40,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
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
                                      Text('Rp.50.000',
                                          style: MyStyle.productPrice),
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
                  const SizedBox(height: 16),
                  const Divider(thickness: 2),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Pengiriman dan pembayaran',
                          style: MyStyle.productCartTitle)
                    ],
                  ),
                  const SizedBox(height: 15),
                  // Payment Method Container
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(64, 0, 0, 0),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            spreadRadius: 0),
                      ],
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pilih metode pembayaran ',
                          style: MyStyle.productPrice,
                        ),
                        const IconButton(
                          onPressed: null,
                          icon: Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  const Divider(thickness: 1),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text('Total Bayar', style: MyStyle.productTitle),
                          Text(
                            'Rp 50.000',
                            style: MyStyle.productTitle
                                .copyWith(color: const Color(0xFFF85959)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 8,
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            MyColors.primaryOrange,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              content: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 22,
                                  vertical: 53,
                                ),
                                height: 260,
                                child: Column(
                                  children: [
                                    // List Payment Container
                                    Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 13),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 1),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/icons/dollar.png',
                                                width: 20,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                'Gopay',
                                                style:
                                                    MyStyle.paymentMethodsTitle,
                                              ),
                                            ],
                                          ),
                                          const Radio(
                                            value: 'gopay',
                                            groupValue: null,
                                            onChanged: null,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 13),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 1),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/icons/dollar.png',
                                                width: 20,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                'OVO',
                                                style:
                                                    MyStyle.paymentMethodsTitle,
                                              ),
                                            ],
                                          ),
                                          const Radio(
                                            value: 'ovo',
                                            groupValue: null,
                                            onChanged: null,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                          // showDialogWithFields(context);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                                'assets/images/icons/checkout_icon.png'),
                            const SizedBox(width: 3),
                            Text(
                              'Bayar',
                              style: MyStyle.productDetailTitle.copyWith(
                                fontSize: MyFontSize.text_12,
                                color: MyColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

void showDialogWithFields(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      var emailController = TextEditingController();
      var messageController = TextEditingController();
      return AlertDialog(
        title: Text('Contact Us'),
        content: ListView(
          shrinkWrap: true,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: messageController,
              decoration: InputDecoration(hintText: 'Message'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Send them to your email maybe?
              var email = emailController.text;
              var message = messageController.text;
              Navigator.pop(context);
            },
            child: Text('Send'),
          ),
        ],
      );
    },
  );
}
