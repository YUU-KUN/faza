import 'package:ecommerce_faza/model/product_model.dart';
import 'package:ecommerce_faza/services/api_service.dart';
import 'package:ecommerce_faza/view/dashboard/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  // List<ProductModel> products = List<ProductModel>.empty(growable: true);
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
        child: loadProducts(),
      ),
    );
  }

  Widget loadProducts() {
    return FutureBuilder(
      future: APIService.getProducts(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<ProductModel>?> model,
      ) {
        if (model.hasData) {
          return productList(model.data);
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget productList(products) {
    debugPrint(products);
    return products;
    // return SingleChildScrollView(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //               onPrimary: Colors.white,
    //               primary: Colors.green,
    //               minimumSize: const Size(88, 36),
    //               padding: const EdgeInsets.symmetric(horizontal: 16),
    //               shape: const RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.all(
    //                   Radius.circular(10),
    //                 ),
    //               ),
    //             ),
    //             onPressed: () {
    //               Navigator.pushNamed(
    //                 context,
    //                 '/add-product',
    //               );
    //             },
    //             child: const Text('Add Product'),
    //           ),
    //           ListView.builder(
    //             shrinkWrap: true,
    //             physics: const ClampingScrollPhysics(),
    //             scrollDirection: Axis.vertical,
    //             itemCount: products.length,
    //             itemBuilder: (context, index) {
    //               return ProductItem(
    //                 model: products[index],
    //                 onDelete: (ProductModel model) {
    //                   setState(() {
    //                     isApiCallProcess = true;
    //                   });

    //                   // APIService.deleteProduct(model.id).then(
    //                   //   (response) {
    //                   //     setState(() {
    //                   //       isApiCallProcess = false;
    //                   //     });
    //                   //   },
    //                   // );
    //                 },
    //               );
    //             },
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
