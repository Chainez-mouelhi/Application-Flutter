import 'package:http/http.dart' as http;
import 'package:flutter_application/screen/config.dart';

import 'dart:convert';

class Categories {
  String id;
  String nom_categories;
 

  Categories(
      {required this.id,
      required this.nom_categories,
      });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      id: json['id'],
      nom_categories: json['nom_categories'],
      


    );
  }
}

class CategoriesHttp {
  Future<List<Categories>> getAll() async {
    final res = await http.get(categoriesURL);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Categories> datas = body
          .map(
            (dynamic item) => Categories.fromJson(item),
          )
          .toList();
      return datas;
    } else {
      throw "Error.";
    }
  }
}
