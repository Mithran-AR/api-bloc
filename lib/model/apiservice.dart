import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Mithran.dart';
import 'Products.dart';

class Apiservice{

  Future<List<Products>?> fetchdata()  async {
    final responce=await http.get(Uri.parse("https://dummyjson.com/products"));
    var jsonn=jsonDecode(responce.body);
    var data=Mithran.fromJson(jsonn);
    var list=data.products;
    return list;
  }
}