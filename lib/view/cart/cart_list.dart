import 'package:ecommerce_faza/model/cart_model.dart';
import 'package:ecommerce_faza/model/product_model.dart';
import 'package:ecommerce_faza/services/api_service.dart';
import 'package:ecommerce_faza/view/dashboard/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  bool isApiCallProcess = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NodeJS - CRUD'),
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: ProgressHUD(
        child: loadCarts(),
      ),
    );
  }

  Widget loadCarts() {
    return FutureBuilder(
      future: APIService.getCarts(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<CartModel>?> model,
      ) {
        if (model.hasData) {
          return cartList(model.data);
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget cartList(products) {
    debugPrint(products);
    // return Center(
    //   child: Text('carts.toString()'),
    // );
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.green,
                  minimumSize: const Size(88, 36),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/add-product',
                  );
                },
                child: const Text('Add Product'),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    model: products[index],
                    onDelete: (ProductModel model) {
                      setState(() {
                        isApiCallProcess = true;
                      });

                      // APIService.deleteProduct(model.id).then(
                      //   (response) {
                      //     setState(() {
                      //       isApiCallProcess = false;
                      //     });
                      //   },
                      // );
                    },
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
