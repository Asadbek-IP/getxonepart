import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxonepart/services/binding_service.dart';
import 'package:getxonepart/services/di_service.dart';

import 'pages/home_page.dart';

main()async{
 await DIService.init();
  runApp(
    MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      //initialBinding: BindingService(),
    );
  }
}