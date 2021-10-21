import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(
      {Key? key,
      required this.numberRows,
      this.backgroundColor = Colors.transparent})
      : super(key: key);

  final int numberRows;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    const double _fixedDividerHeight = 5;
    if (numberRows > 0) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            (numberRows - 1),
            (index) => const ItemWidget(
              height: _fixedDividerHeight,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
      );
    }
    return const EmptyWidget(
      content: 'Không có hàng nào được hiển thị.',
    );
  }
}
