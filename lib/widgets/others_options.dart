import 'package:flutter/material.dart';
import 'package:medical_app/widgets/login_options.dart';

class OthersOptions extends StatelessWidget {
  const OthersOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LogInOptions(image: "assets/images/phone.png",color: Colors.blue,),
        LogInOptions(image: "assets/images/google.png"),
        LogInOptions(image: "assets/images/facebook.png"),
      ],
    );
  }
}
