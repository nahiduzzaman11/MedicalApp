import 'package:flutter/material.dart';
import 'package:medical_app/controller/mycontroller.dart';
import 'package:medical_app/model/datalist.dart';
import 'package:medical_app/screens/doctors.dart';
import 'package:medical_app/widgets/bottom_nev.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  MyController controller =Get.put(MyController());
  bool clk = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //First_Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Text(
                            "Elsie Adkins ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          Image(
                            image: AssetImage(
                              "assets/images/hi.png",
                            ),
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/doctor.png"),
                    ),
                  ],
                ),

                //Second Section(Clinic & Home card)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              clk = true;
                            });
                          },
                          child: Card(
                            color: clk == true? Color(0xff695cd5) : Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: clk==true ? Colors.white : Color(0xfff0eefa),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xff695cd5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Clinic visit",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: clk ==true? Colors.white : Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Make an appointment",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              clk = false;
                            });
                          },
                          child: Card(
                            color: clk==false ? Color(0xff695cd5) : Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: clk==false ? Colors.white : Color(0xfff0eefa),
                                    child: Icon(
                                      Icons.home_rounded,
                                      color: Color(0xff695cd5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Home visit",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: clk ==false? Colors.white : Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Call the doctor home",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "What are your symptoms?",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),

                //Third Section (Symptoms Card)
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: symptoms.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0,
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset(
                                "${symptoms[index].emoji}",
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("${symptoms[index].text}")
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  "Popular doctors",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),

                //Forth Section (Doctor Card)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.8
                    ),
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                            Get.to(Doctors());
                            controller.addToCart(doctors[index]);
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "${doctors[index].emoji}",
                                  height: 80,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 10, right: 15, bottom: 5),
                                  child: Text(
                                    "${doctors[index].text}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    "${doctors[index].details}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xfffff8ea),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/images/star.png",height: 12,),
                                      Text(" ${doctors[index].rate}",style: TextStyle(fontSize: 12,),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: Bottom_Nev()
      ),
    );
  }
}

