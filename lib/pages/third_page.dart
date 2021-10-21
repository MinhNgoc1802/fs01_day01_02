import 'package:flutter/material.dart';
import 'package:fs01_day01_02/widgets/widget.dart';
import 'page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
    required this.numberColumns,
  }) : super(key: key);
  final int numberColumns;
  @override
  Widget build(BuildContext context) {
    const double _spacingItem = 5;
    final paddingSys = MediaQuery.of(context).padding;
    if (numberColumns > 0) {
      return Scaffold(
        body: Container(
          color: Colors.lightBlueAccent,
          margin: EdgeInsets.only(
            top: paddingSys.top,
            bottom: _spacingItem,
          ),
          child: Stack(
            children: [
              FirstPage(numberColumns: numberColumns),
              SecondPage(
                numberRows: numberColumns * 2,
              ),
            ],
          ),
        ),
      );
    }
    return const EmptyWidget(content: 'Không có hàng/ cột nào được hiển thị.');
  }
}
