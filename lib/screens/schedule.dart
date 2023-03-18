import 'package:flutter/material.dart';
import 'package:medical_app/widgets/bottom_nev.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text("Schedule",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff4f5f9),),
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
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: i == 1 ? Color(0xff695cd5) : Colors.transparent),
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
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: i == 2 ? Color(0xff695cd5) : Colors.transparent),
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
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: i == 3 ? Color(0xff695cd5) : Colors.transparent),
                            child: Text("Canceled",style: TextStyle(fontSize: 16,color: i ==3 ? Colors.white: Colors.grey),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Nearest visit",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Doctor_Card(details: "Pediatrician", name: "Dr. Chris Frazier", img: "assets/images/male.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Future visit",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Doctor_Card(details: "Cardiologist", name: "Dr. Charlie Black", img: "assets/images/doctor.png"),
                Doctor_Card(details: "Therapist", name: "Dr. Viola Dunn", img: "assets/images/female.png"),
              ],
            ),
          ),
        ),

        bottomNavigationBar: Bottom_Nev(),
      ),
    );
  }
}
