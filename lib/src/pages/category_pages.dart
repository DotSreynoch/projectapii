import 'package:flutter/material.dart';
import 'package:projectapii/src/models/categories_model.dart';
class CategoryPages extends StatelessWidget {
  final CategoryModel categoryModel;
  CategoryPages({super.key, required this.categoryModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        centerTitle: true,
      ),
      body: Container(
        child: SafeArea(
            child: Column(
              children: [
                Image.network(categoryModel.images ?? ' ',
                  height: 200,
                  width: double.infinity,
                ),
                Text(categoryModel.name ?? ' '),
              ],
            ),
        ),
      ),
    );
  }
}
