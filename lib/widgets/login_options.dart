import 'package:flutter/material.dart';

class LogInOptions extends StatelessWidget {
  LogInOptions({Key? key, required this.image,this.color}) : super(key: key);

  String image;
  Color ?color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(image,color: color,),
      ),
    );
  }
}
