import 'dart:convert';
import 'package:projectapii/global_config.dart';
import '../models/slide.dart';
import 'package:http/http.dart' as http;

Future<List<Slide>> getAllSlidesRepository() async{
  String url=apiurl+"slide";
  var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
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
      return Slide.fromJson(item);
    }).toList();
  }
  return[];
}