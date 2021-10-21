import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.numberColumns,
  }) : super(key: key);
  final int numberColumns;

  @override
  Widget build(BuildContext context) {
    const double _fixedDividerWidth = 5;

    if (numberColumns > 0) {
      return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            (numberColumns - 1),
            (index) => const DividerItem(
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
