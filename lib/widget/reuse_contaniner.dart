import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final Color color;

  const ReuseContainer({
    super.key,
    required this.imagePath,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
