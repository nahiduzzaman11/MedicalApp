import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/constant/strings_values.dart';
import 'package:medical_app/screens/dashboard.dart';
import 'package:medical_app/widgets/doctor_card.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  int i = 1;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Get.offAll(()=> const DashBoard());
        print("System Back Button Clicked");
        return true;
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Schedule",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f5f9),),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                i=1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              color: i == 1 ? cardColor : Colors.transparent),
                              child: Text("Upcoming",style: TextStyle(fontSize: 16,color: i ==1 ? Colors.white: Colors.grey),),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                i=2;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              color: i == 2 ? cardColor : Colors.transparent),
                              child: Text("Completed",style: TextStyle(fontSize: 16,color: i ==2 ? Colors.white: Colors.grey),),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                i=3;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              color: i == 3 ? cardColor : Colors.transparent),
                              child: Text("Canceled",style: TextStyle(fontSize: 16,color: i ==3 ? Colors.white: Colors.grey),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Nearest visit",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Doctor_Card(details: "Pediatrician", name: "Dr. Chris Frazier", img: "assets/images/male.png"),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Future visit",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Doctor_Card(details: "Cardiologist", name: "Dr. Charlie Black", img: "assets/images/doctor.png"),
                  Doctor_Card(details: "Therapist", name: "Dr. Viola Dunn", img: "assets/images/female.png"),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
