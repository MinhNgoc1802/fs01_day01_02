import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _totalLines = 5;
    const double _fixedLineHeight = 10;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          _totalLines,
          (index) => const ItemWidget(
            height: _fixedLineHeight,
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
