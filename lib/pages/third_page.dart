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
          child: Stack(
            children: [
              columnWidget(),
              rowWidget(),
            ],
          ),
          color: Colors.lightBlueAccent,
          margin: EdgeInsets.only(
            top: paddingSys.top,
            bottom: _spacingItem,
          ),
        ),
      );
    }
    return const EmptyWidget(content: 'Không có hàng/ cột nào được hiển thị.');
  }

  Widget columnWidget() => FirstPage(
        numberColumns: numberColumns,
      );
  Widget rowWidget() => SecondPage(
        numberRows: numberColumns * 2,
      );
}
