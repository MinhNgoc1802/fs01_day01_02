import 'package:flutter/material.dart';
import 'pages/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: FirstPage(
      //   numberColumn: 4,
      // ),
      // home: SecondPage(
      //   numberRow: 6,
      // ),
      home: FourthPage(),
    );
  }
}
