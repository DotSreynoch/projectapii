import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projectapii/src/models/categories_model.dart';
import '../../global_config.dart';

Future<List<CategoryModel>> getCategoryAPI() async{
  String url=apiurl+"category";
  var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'Application/json',
        'Accept': 'application/json',
      }
  );
  if(response.statusCode==200){
    //var data=response.body;   //or
    //var result=jsonDecode(data)["data"];   //or
    //var result=json.decode(data)["data"];  // or
    List result=jsonDecode(response.body)["data"];

    //return result.map((item)=>SlideModels.fromJson(item)).toList(); or single
    return result.map((item){    //blog code
      return CategoryModel.fromJson(item);
    }).toList();
  }
  return[];
}