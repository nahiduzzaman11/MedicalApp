import 'package:flutter/material.dart';
import 'package:medical_app/constant/strings_values.dart';
import 'package:medical_app/controller/mycontroller.dart';
import 'package:medical_app/model/datalist.dart';
import 'package:medical_app/screens/doctors.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyController controller = Get.put(MyController());
  bool clk = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //First_Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: const [
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        "assets/images/doctor.png",
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),

                //Second Section(Clinic & Home card)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              clk = true;
                            });
                          },
                          child: Card(
                            color: clk == true ? cardColor : Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: clk == true
                                        ? Colors.white
                                        : cardIconBackColor,
                                    child: Icon(
                                      Icons.add,
                                      color: cardColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      "Clinic visit",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: clk == true
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                  const Text(
                                    "Make an appointment",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              clk = false;
                            });
                          },
                          child: Card(
                            color: clk == false ? cardColor : Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: clk == false
                                        ? Colors.white
                                        : cardIconBackColor,
                                    child: Icon(
                                      Icons.home_rounded,
                                      color: cardColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      "Home visit",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: clk == false
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                  const Text(
                                    "Call the doctor home",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
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
                const Text(
                  "What are your symptoms?",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),

                //Third Section (Symptoms Card)
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: symptoms.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0,
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset(
                                "${symptoms[index].emoji}",
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("${symptoms[index].text}"),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const Text(
                  "Popular doctors",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),

                //Forth Section (Doctor Card)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.8),
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(() => Doctors());
                          controller.addToCart(doctors[index]);
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
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
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    "${doctors[index].details}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  padding: const EdgeInsets.all(5),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: cardRatingColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/star.png",
                                        height: 12,
                                      ),
                                      Text(
                                        " ${doctors[index].rate}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
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
      ),
    );
  }
}
