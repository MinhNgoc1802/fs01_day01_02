import 'package:flutter/material.dart';

class DividerItem extends StatelessWidget {
  const DividerItem({
    Key? key,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: width,
      height: height,
    );
  }
}
