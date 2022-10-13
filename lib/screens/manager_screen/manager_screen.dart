

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_new_product.dart';

class ManagerProductScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manager Product'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(AddNewProduct());
              },
              icon: Icon(Icons.add),),
        ],
      ),

    );
  }
}
