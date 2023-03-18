import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/screens/home.dart';
import 'package:medical_app/screens/schedule.dart';

class Bottom_Nev extends StatefulWidget {
  Bottom_Nev({
    super.key,
  });

  @override
  State<Bottom_Nev> createState() => _Bottom_NevState();
}

class _Bottom_NevState extends State<Bottom_Nev> {

  int i=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 5),
      color: Colors.white,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    i = 1;
                    Get.offAll(HomePage());
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.home_rounded,size: 24,color: i==1 ?Color(0xff695cd5): Colors.grey,),
                    Text("Home",style: TextStyle(fontSize: 14,color: i==1 ?Color(0xff695cd5): Colors.grey),)
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    i=2;
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.sms_outlined,size: 24,color: i==2 ?Color(0xff695cd5): Colors.grey,),
                    Text("Home",style: TextStyle(fontSize: 14,color: i==2 ?Color(0xff695cd5): Colors.grey),)
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                   setState(() {
                     i=3;
                     Get.to(Schedule());
                   });
                },
                child: Column(
                  children: [
                    Icon(Icons.calendar_month_rounded,size: 24,color: i==3 ?Color(0xff695cd5): Colors.grey,),
                    Text("Schedule",style: TextStyle(fontSize: 14,color: i==3 ?Color(0xff695cd5): Colors.grey),)
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    i=4;
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.settings_rounded,size: 24,color: i==4 ?Color(0xff695cd5): Colors.grey,),
                    Text("Settings",style: TextStyle(fontSize: 14,color: i==4 ?Color(0xff695cd5): Colors.grey),)
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            height: 5,width: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
              color: Colors.grey[300],),
          ),
        ],
      ),
    );
  }
}