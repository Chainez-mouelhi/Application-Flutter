
import 'package:flutter/material.dart';
import 'screen/device.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FreshDrinks',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
  
      home: DeviceScreen(),
    );
  }
}

