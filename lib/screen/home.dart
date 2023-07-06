import 'package:flutter/material.dart';
import '../model/boissons1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BoissonsHttp boissonsHttp = BoissonsHttp();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    'FRESHDRINKS',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FutureBuilder(
            // Futur va chercher tous les données

            future: boissonsHttp.getAll(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Boissons>> snapshot) {
              // Affiche les données
              if (snapshot.hasData) {
                List<Boissons>? boissons =
                    snapshot.data; // Voir si il y a des données nulles
                return ListView(
                  children: boissons!
                      .map((Boissons boissons) => ListTile(
                            leading: Image.network(boissons.image_boissons),
                            title: Text(boissons.nom),
                            subtitle: Text("${boissons.prix} €"),
                            trailing: Icon(Icons.arrow_right),
                          ))
                      .toList(),
                ); // Pour afficher
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          Container(
            height: 10,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/starbucks.jpg'),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          DefaultTabController(
            length: 5,
            child: TabBar(
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Color(0xff00704a),
              unselectedLabelColor: Color(0xff5f6368),
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Iced Tea',
                ),
                Tab(
                  text: 'Frappucino',
                ),
                Tab(
                  text: 'Smoothie',
                ),
                Tab(
                  text: 'Cold coffee',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
