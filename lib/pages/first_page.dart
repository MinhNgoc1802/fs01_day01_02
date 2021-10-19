
import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _totalLines = 3;
    const double _fixedLineWidth = 10;

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          _totalLines,
          (index) => const ItemWidget(
            width: _fixedLineWidth,
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
