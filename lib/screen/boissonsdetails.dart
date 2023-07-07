import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  // final Boissons boissons;
  final Map<String, dynamic> boissons;

  ItemScreen({required this.boissons});
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                
                
                Image.network(
                  widget.boissons["image_boissons"],
                  height: 350,
                ),
             
                 
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.boissons["nom"],
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                  Text(
                    widget.boissons["description"],
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ), 
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]

                  ),



                  Text(
                    widget.boissons["ingredients"],
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Prix',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]

                  ),
                   Text(
                    widget.boissons["prix"],
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
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

             
              
              
            ),
          ),
        ],
        
      ),
    );
  }
}
