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
      /**
       * Hình đầu tiên bên trái
       */
      home: FirstPage(
        numberColumns: 4,
      ),
      /**
       * Hình thứ 2 từ trái sang
       */
      // home: SecondPage(
      //   numberRows: 6,
      //   backgroundColor: Colors.lightBlueAccent,
      // ),
      /**
       * Hình thứ 3 từ trái sang
       */
      // home: ThirdPage(
      //   numberColumns: 4,
      // ),
      /**
       * Hình đầu tiên bên phải
       */
      // home: FourthPage(),
    );
  }
}
