import 'package:flutter/material.dart';
import 'package:trouver_project/pages/detail_page/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff242A32),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              fontFamily: 'Poppins',
            ),
      ),
      home: DetailPage(),
    );
  }
}
