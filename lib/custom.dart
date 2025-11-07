import 'package:flutter/material.dart';
class Custom extends StatelessWidget {
   final String title;
   final Color? color;
  const Custom({super.key, required this.title, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color?? Colors.red,
        borderRadius: BorderRadius.circular(18),
      ),
      child:Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
