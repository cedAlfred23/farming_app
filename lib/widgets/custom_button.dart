import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    required this.widget,
    this.color,
    required this.onTap,
    super.key,
  });
  void Function()? onTap;
  Color? color;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: color ?? Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: widget),
      ),
    );
  }
}