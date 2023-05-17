import 'package:flutter/material.dart';
import 'package:medical_app/constant/strings_values.dart';
import 'package:medical_app/screens/dashboard.dart';
import 'package:medical_app/screens/register_page.dart';
import 'package:medical_app/widgets/custom_button.dart';
import 'package:medical_app/widgets/custom_text_field.dart';
import 'package:medical_app/widgets/others_options.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    bool isClick = false;
    var space = SizedBox(
      height: height * 0.05,
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
                    "Welcome back you've",
                    style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Text(
                  "been missed!",
                  style: TextStyle(
                      color: Colors.blueGrey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                space,
                Custom_Text_Field(controller: emailController,preicon: Icons.person_outline,
                  text: "Enter email",),
                Custom_Text_Field(
                    controller: passController,preicon: Icons.lock_outline_rounded,
                    text: "Password", icon: Icons.remove_red_eye_outlined),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Remember Me?",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      Checkbox(
                        value: isClick,
                        onChanged: (value) {
                          setState(() {
                            isClick = !isClick;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Custom_Button(
                      text: "Sign In",
                      backgroundColor: 0xff272727,
                      foregroundColor: 0xffffffff,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashBoard(),),);
                      },
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Recovery Password",
                    style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                  ),
                ),
                space,
                Text("Or continue with", style: style,),
                space,
                const OthersOptions(),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    InkWell(
                      autofocus: false,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register Now",
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
