import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.numberColumn,
  }) : super(key: key);
  final int numberColumn;

  @override
  Widget build(BuildContext context) {
    const double _fixedDividerWidth = 10;
    if (numberColumn > 0) {
      return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            (numberColumn - 1),
            (index) => const ItemWidget(
              width: _fixedDividerWidth,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      );
    }
    return const EmptyWidget(
      content: 'Không có cột nào được hiển thị.',
    );
  }
}
