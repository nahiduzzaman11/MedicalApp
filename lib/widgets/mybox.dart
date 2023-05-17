import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
   MyBox({Key? key, required this.child}) : super(key: key);

   final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 5,
            offset: const Offset(5, 5),
          ),
          const BoxShadow(
            color: Colors.white,
            blurRadius: 5,
            offset: Offset(-5,-5),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
