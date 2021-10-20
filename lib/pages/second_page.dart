import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.numberRow,
  }) : super(key: key);

  final int numberRow;

  @override
  Widget build(BuildContext context) {
    const double _fixedDividerHeight = 10;
    if (numberRow > 0) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            (numberRow - 1),
            (index) => const ItemWidget(
              height: _fixedDividerHeight,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      );
    }
    return const EmptyWidget(
      content: 'Không có hàng nào được hiển thị.',
    );
  }
}
