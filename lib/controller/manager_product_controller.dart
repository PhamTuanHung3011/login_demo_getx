

import 'package:get/get.dart';

import '../model/product/product_model.dart';

class ManagerProductController extends GetxController {


  RxList<Product> _productList = <Product>[].obs;
  List<Product> get productList => _productList.value;
   set productList(value) {
    _productList.value = value;
  }

  void addProduct(Product product) {
     final newProduct = Product(
         DateTime.now().toString(), product.title, product.description, product.price, product.quantity, product.imageUrl, product.category);
     _productList.add(newProduct);

     update();

  }

}