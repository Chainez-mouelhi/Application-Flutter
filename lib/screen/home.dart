import 'package:flutter/material.dart';

import 'boissonsdetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> nameList = [
    {
      "id": "1",
      "nom": "Iced Shaken Black Tea Lemonade",
      "description":
          "Un Iced Tea rafraîchissant à base de thé noir infusé, servi froid avec des glaçons. Il offre une saveur corsée et légèrement sucrée.",
      "ingredients":
          "Thé noir, eau, glaçons, sucre (facultatif), tranche de citron (facultatif).",
      "prix": "4",
      "image_boissons":
          "https://freshdrinks.alwaysdata.net/images/IcedPeachTea.png"
    },
    {
      "id": "2",
      "nom": "Iced Peach Tea",
      "description":
          "Un Iced Tea délicieux avec une touche de pêche, à base de thé infusé, servi froid avec des glaçons. Il offre une saveur fruitée et douce.",
      "ingredients":
          "Thé noir ou thé vert, eau, glaçons, purée de pêche, sucre (facultatif).",
      "prix": "4",
      "image_boissons":
          "https://freshdrinks.alwaysdata.net/images/IcedShakenBlackTeaLemonade.png"
    },
    {
      "id": "3",
      "nom": "Iced Coffee",
      "description":
          "Un café glacé rafraîchissant, parfait pour se rafraîchir pendant les journées chaudes. Il est préparé en mélangeant du café infusé froid avec du lait et du sucre, servi sur des glaçons.",
      "ingredients": "Café infusé froid, lait, sucre (facultatif), glaçons.",
      "prix": "5",
      "image_boissons": "https://freshdrinks.alwaysdata.net/images/icecoffe.png"
    },
    {
      "id": "4",
      "nom": "Cold Brew",
      "description":
          "Une boisson à base de café préparée en infusant du café moulu grossièrement dans de l'eau froide pendant une longue période, ce qui donne un café doux et moins acide. Il est servi sur des glaçons.",
      "ingredients": "Café moulu grossièrement, eau froide, glaçons.",
      "prix": "5",
      "image_boissons": "https://freshdrinks.alwaysdata.net/images/coldbrew.png"
    },
    {
      "id": "5",
      "nom": "Ice Latte",
      "description":
          "Un délicieux mélange glacé de café, de lait et de glace, généralement sucré et garni de crème fouettée. Il offre une texture onctueuse et un goût riche.",
      "ingredients":
          "Café, lait, glace, sucre, crème fouettée (garniture facultative).",
      "prix": "5",
      "image_boissons": "https://freshdrinks.alwaysdata.net/images/latte.png"
    },
    {
      "id": "6",
      "nom": "Frappuccino Caramel",
      "description":
          " Un Frappuccino crémeux et rafraîchissant avec une saveur de caramel sucré. Il est préparé avec du café espresso, du lait, de la glace, du sirop de caramel et de la crème fouettée.",
      "ingredients":
          "Café espresso, lait, glace, sirop de caramel, crème fouettée, sauce au caramel (garniture facultative).",
      "prix": "6",
      "image_boissons":
          "https://freshdrinks.alwaysdata.net/images/frappucino_caramel.png"
    },
    {
      "id": "7",
      "nom": "Frappuccino Mocha",
      "description":
          " Un délicieux mélange glacé de café espresso, de lait, de glace, de chocolat et de crème fouettée. C'est une boisson riche et onctueuse au goût chocolaté.",
      "ingredients":
          "Café espresso, lait, glace, sirop de chocolat, crème fouettée, sauce au chocolat (garniture facultative).",
      "prix": "6",
      "image_boissons":
          "https://freshdrinks.alwaysdata.net/images/frappucino_choco.png"
    },
    {
      "id": "8",
      "nom": "Smoothie aux Fruits Rouges ",
      "description":
          "Un smoothie rafraîchissant et plein de saveurs, préparé avec un mélange de fruits rouges tels que les fraises, les framboises et les myrtilles. Il est mélangé avec du yaourt et du jus de fruits pour une texture crémeuse et une explosion de saveurs fr",
      "ingredients":
          "Fraises, framboises, myrtilles, yaourt, jus de fruits (orange, pomme, etc.), glaçons.",
      "prix": "5",
      "image_boissons":
          "https://freshdrinks.alwaysdata.net/images/smoothie_fr.png"
    },
    {
      "id": "9",
      "nom": "Smoothie Tropical ",
      "description":
          "Un smoothie exotique qui transporte vos papilles dans les tropiques. Il est préparé avec un mélange de fruits tropicaux tels que l'ananas, la mangue et la banane, associés à du lait de coco pour une texture crémeuse et une saveur tropicale intense.",
      "ingredients":
          "Ananas, mangue, banane, lait de coco, jus d'orange, glaçons.",
      "prix": "5",
      "image_boissons":
          "https://freshdrinks.alwaysdata.net/images/mango-passion-smoothie.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           Image.asset(
                  'assets/logo.png',
                  height: 350,
                  width: 350,
                  fit: BoxFit.contain
                ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, ),
            child: Row(
              children: const [
                
              ],
            ),
          ),
          Container(
            height: 0,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
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


          
          Container(
            height: 580,
            width: double.infinity,
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 15),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: nameList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2,
                    color: Colors.amber,
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            nameList[index]['image_boissons'],
                            fit: BoxFit.cover,
                          
                          ),
                        ),
                      ),
                      title: Text(
                        nameList[index]['nom'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      trailing: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ItemScreen(boissons: nameList[index])));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          
        ],
      ),
    );
  }
}
