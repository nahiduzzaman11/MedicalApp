import 'package:flutter/material.dart';
import 'package:medical_app/constant/strings_values.dart';
import 'package:medical_app/controller/mycontroller.dart';
import 'package:medical_app/model/datalist.dart';
import 'package:get/get.dart';
import 'package:medical_app/screens/dashboard.dart';

class Doctors extends StatelessWidget {
  Doctors({Key? key}) : super(key: key);

  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        controller.removeFromCart(0);
        print("System Back Button Clicked");
        return true;
      },
      child: Scaffold(
        backgroundColor: cardColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  //First Section
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                controller.removeFromCart(0);
                                Get.offAll(()=> const DashBoard());
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  maxRadius: 30,
                                  child: Image.asset(
                                    "${controller.select.first.emoji}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    "${controller.select.first.text}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                    "${controller.select.first.details}",
                                    style: const TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.more_vert_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.white30,
                              child: Icon(
                                Icons.call,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white30,
                              child: Icon(
                                Icons.sms_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //Second Section
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "About doctor",
                            style: style1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "${controller.select.first.about}",
                            style: const TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    "Reviews",
                                    style: style1,
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/star.png",
                                  height: 14,
                                ),
                                 Text(
                                  " ${controller.select[0].rate}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  "(112)",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //Third Section
                  Container(
                    color: Colors.white,
                    height: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: doctors.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 5,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "${doctors[index].emoji}",
                                      fit: BoxFit.cover,
                                      height: 50,
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${doctors[index].text}",
                                          style: style1,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              top: 5),
                                          child: Text(
                                            "1 day ago",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                          color: cardRatingColor,
                                          borderRadius:
                                          BorderRadius.circular(30)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
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
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      "${doctors[index].about}",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  //Forth Section
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Location",
                            style: style1,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              maxRadius: 20,
                              backgroundColor: cardIconBackColor,
                              child: Icon(
                                Icons.location_on,
                                color: cardColor,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lotus Medical Center",
                                  style: style1,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "3516 w. Gray St. Utica Pennsylvania",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: Container(
          color: Colors.white,
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Consultation price",style: TextStyle(color: Colors.grey,fontSize: 16,),),
                  Row(
                    children: const [
                      ImageIcon(AssetImage("assets/images/dollar.png",),size: 16,),
                      Text("52",style: TextStyle(color: Colors.black,fontSize: 20,),),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 14),
                  decoration: BoxDecoration(color: cardColor,
                    borderRadius: BorderRadius.circular(10),),
                  child: const Text("Book Appointment",style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 5,width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



