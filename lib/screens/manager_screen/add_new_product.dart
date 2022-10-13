import 'package:flutter/material.dart';

import '../../widgets/rounded_text_formfield.dart';

class AddNewProduct extends StatelessWidget {



  final _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new product!'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title product',
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _quantityController,
                decoration: InputDecoration(
                  labelText: 'Quantity product',
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter quantity';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description product',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nhập mô tả sản phẩm';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _priceController,
                decoration: InputDecoration(
                  labelText: 'Price product',
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nhập giá sản phẩm';
                  }
                  return null;
                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}
