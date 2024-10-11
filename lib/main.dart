import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_with_provider_119/view/Home_page.dart';

import 'data/db_helper.dart';
import 'db_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>DBProvider(dBhelper: DBhelper.getInstance()),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO APP',

      home: HomePage(),
    );
  }
}