
import 'package:flutter/material.dart';
import 'home.dart';



class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeScreen(),
        bottomNavigationBar: BottomNavBarFb3(),
      ),
    );
  }
}

class BottomNavBarFb3 extends StatelessWidget {
  const BottomNavBarFb3({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff53E88B);
  final secondaryColor = const Color(0xff53E88B);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar2(
                  text: "Home",
                  icon: Icons.home,
                  selected: true,
                  onPressed: () {}),
              const Spacer(),
              IconBottomBar(
                  text: "Menu",
                  icon: Icons.menu_book,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  }),
              IconBottomBar(
                  text: "Bag",
                  icon: Icons.shopping_bag,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  }),
              IconBottomBar(
                  text: "Store",
                  icon: Icons.store,
                  selected: false,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff53E88B);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
        required this.text,
        required this.icon,
        required this.selected,
        required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final primaryColor = const Color(0xff53E88B);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}