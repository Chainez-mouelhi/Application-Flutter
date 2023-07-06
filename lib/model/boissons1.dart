import 'package:http/http.dart' as http;
import 'package:flutter_application/screen/config.dart';

import 'dart:convert';

class Boissons {
  String id;
  String nom;
  String description;
  String ingredients;
  String prix;
  String image_boissons;

  Boissons(
      {required this.id,
      required this.nom,
      required this.description,
      required this.ingredients,
      required this.prix,
      required this.image_boissons,});

  factory Boissons.fromJson(Map<String, dynamic> json) {
    return Boissons(
      id: json['id'],
      nom: json['nom'],
      description: json['description'],
      ingredients: json['ingredients'],
      prix: json['prix'],
      image_boissons: json['image_boissons'],


    );
  }
}

class BoissonsHttp {
  Future<List<Boissons>> getAll() async {
    final res = await http.get(boissonsURL);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Boissons> datas = body
          .map(
            (dynamic item) => Boissons.fromJson(item),
          )
          .toList();
      return datas;
    } else {
      throw "Error.";
    }
  }
}
