import 'package:flutter/material.dart';
import 'package:medical_app/model/datalist.dart';

class Doctors extends StatelessWidget {
  Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            color: Color(0xff695cd5),
            child: Column(
              children: [

                //First Section
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                maxRadius: 30,
                                child: Image.asset(
                                  "assets/images/male.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Dr. Viola Dunn",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Therapist",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Dr. Viola Dunn's is an experienced speciallist who is constantly working on improving her skills.",
                          style: TextStyle(color: Colors.black, fontSize: 14),
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
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset(
                                "assets/images/star.png",
                                height: 14,
                              ),
                              Text(
                                " 4.9",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "(112)",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Text(
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                        child: Container(
                          padding: EdgeInsets.symmetric(
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${doctors[index].text}",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight:
                                            FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
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
                                    padding: EdgeInsets.all(5),
                                    margin: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                        color: Color(0xfffff8ea),
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
                                          style: TextStyle(
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
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10),
                                  child: Text(
                                    "${doctors[index].about}",
                                    style: TextStyle(
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
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Location",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: Color(0xfff0eefa),
                            child: Icon(
                              Icons.location_on,
                              color: Color(0xff695cd5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lotus Medical Center",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "3516 w. Gray St. Utica Pennsylvania",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
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

        bottomNavigationBar: Container(
          color: Colors.white,
          height: 120,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Consultation price",style: TextStyle(color: Colors.grey,fontSize: 16,),),
                  Row(
                    children: [
                      ImageIcon(AssetImage("assets/images/dollar.png",),size: 16,),
                      Text("52",style: TextStyle(color: Colors.black,fontSize: 20,),),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 14),
                  decoration: BoxDecoration(color: Color(0xff695cd5),
                    borderRadius: BorderRadius.circular(10),),
                  child: Text("Book Appointment",style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
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



