
import 'package:flutter/material.dart';
import '../model/boissons1.dart';




class BoissonsScreen extends StatelessWidget {
  final BoissonsHttp boissonsHttp = BoissonsHttp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locations"),
        backgroundColor: Colors.green.shade200,),
      body: FutureBuilder(
          
        // Futur va chercher tous les données

        future: boissonsHttp.getAll(),
        builder: (BuildContext context, AsyncSnapshot<List<Boissons>> snapshot) {
          // Affiche les données
          if (snapshot.hasData) {
            List<Boissons>? rooms = snapshot.data; // Voir si il y a des données nulles
            return ListView(
              children: rooms!
                  .map((Boissons boissons) => ListTile(
                        leading: Image.network(boissons.image_boissons),
                        title: Text(boissons.nom),
                        subtitle: Text("${boissons.prix} € / semaine"),
                        trailing: Icon(Icons.arrow_right),
                       
                      ))
                  .toList(),
            ); // Pour afficher
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
