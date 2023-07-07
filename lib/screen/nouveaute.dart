import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  // Liste statique des nouveautés des boissons avec des images
  final List<Map<String, dynamic>> nouveautes = [
    {
      "id_nouveauté": "1",
      "nom_nouveauté": "Matcha",
      "description": "Voici la nouveauté du jour",
      "image_nouveauté":
          "https://freshdrinks.alwaysdata.net/images/Nouveauté-Matcha.jpg"
    },
    {
      "id_nouveauté": "2",
      "nom_nouveauté": "Coffe",
      "description": "Voici la nouveauté du jour",
      "image_nouveauté": "https://freshdrinks.alwaysdata.net/images/News.jpg"
    },
    {
      "id_nouveauté": "1",
      "nom_nouveauté": "Matcha",
      "description": "Voici la nouveauté du jour",
      "image_nouveauté":
          "https://freshdrinks.alwaysdata.net/images/Nouveauté-Matcha.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('À propos'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nouveautés des boissons',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 26),
              const Text(
                'Découvrez nos dernières boissons !',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 26),
              const Text(
                'Nous sommes ravis de vous présenter nos nouveautés de boissons. Que vous soyez un amateur de thé glacé, de cafés frappés ou de smoothies rafraîchissants, vous trouverez ici une sélection de boissons qui satisferont vos papilles.',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 26),
              Container(
                height: 300,
                margin: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        nouveautes[1]['image_nouveauté'].toString()),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              const SizedBox(height: 16),
              const Text(
                'Nouveautés',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                itemCount: nouveautes.length,
                itemBuilder: (context, index) {
                  final nouveaute = nouveautes[index];
                  return ListTile(
                    leading: Image.network(
                      nouveaute['image_nouveauté'],
                      width: 100,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    title: Text(nouveaute['nom_nouveauté']),
                    subtitle: Text(nouveaute['description']),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
