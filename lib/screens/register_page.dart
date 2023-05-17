import 'package:flutter/material.dart';
import 'package:medical_app/constant/strings_values.dart';
import 'package:medical_app/screens/dashboard.dart';
import 'package:medical_app/widgets/custom_button.dart';
import 'package:medical_app/widgets/custom_text_field.dart';
import 'package:medical_app/widgets/others_options.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    TextEditingController regNameController = TextEditingController();
    TextEditingController regEmailController = TextEditingController();
    TextEditingController regPasswordController = TextEditingController();
    TextEditingController regConfirmController = TextEditingController();

    var space =SizedBox(
      height: height * 0.03,
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                frontText,
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    "Create your account",
                    style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Text("to continue!", style: style),
                space,
                Custom_Text_Field(text: "Full Name", controller: regNameController,preicon: Icons.person_outline,),
                Custom_Text_Field(text: "Your email", controller: regEmailController,preicon: Icons.email_outlined,),
                Custom_Text_Field(text: "Password", controller: regPasswordController,preicon: Icons.lock_outline_rounded,icon: Icons.remove_red_eye_outlined,),
                Custom_Text_Field(text: "Confirm password", controller: regConfirmController,preicon: Icons.lock_outline_rounded,icon: Icons.remove_red_eye_outlined,),
                space,
                Row(
                  children: [
                    Custom_Button(text: "Sign Up", backgroundColor: 0xff272727, foregroundColor: 0xffffffff, onTap:() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashBoard(),),);
                    },),
                  ],
                ),
                space,
                Text("Or continue with", style: style,),
                space,
                const OthersOptions(),
                space,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already a member?",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    InkWell(
                      autofocus: false,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "SignIn Now",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                space,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
