import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectapii/src/controllers/category_controller.dart';
import 'package:projectapii/src/pages/category_pages.dart';

import '../../global_config.dart';
class CategoriesElements extends StatelessWidget {
   CategoriesElements({super.key});
  final _con = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Container(
        height: 200,
          width: double.infinity,
          //color: Colors.grey,
          padding: EdgeInsets.all(10),
        child: GridView.builder(
          physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 1,
            ),
            itemCount: _con.listCategory.length,
            itemBuilder: (context, index){
              final imageUrl = "${apiBaseUrl}${_con.listCategory[index].images}";
              return Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>CategoryPages(
                            categoryModel: _con.listCategory[index])),
                    );
                  },
                  child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,),
                          ),
                          Text(
                                _con.listCategory[index].name.toString(),
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                  ),
                ),
              );
              return Text(_con.listCategory[index].name.toString());
            })
      );
    });
  }
}
