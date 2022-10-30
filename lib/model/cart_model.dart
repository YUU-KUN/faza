List<CartModel> cartsFromJson(dynamic str) =>
    List<CartModel>.from((str).map((x) => CartModel.fromJson(x)));

class CartModel {
  late int? id;
  late int? userId;
  late String? date;
  // late dynamic products;
  // late List<>? productImage;

  CartModel({
    this.id,
    this.userId,
    this.date,
    // this.products,
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    date = json['date'];
    // products = json['products'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['userId'] = userId;
    _data['date'] = date;
    // _data['products'] = products;
    return _data;
  }
}
