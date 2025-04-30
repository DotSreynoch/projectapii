import 'package:flutter/material.dart';
import '../elements/slide_elements.dart';
import '../elements/categories_elements.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SlideElements(),
          CategoriesElements()
        ],
      ),
    );
  }
}
