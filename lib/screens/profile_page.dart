import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/constant/strings_values.dart';
import 'package:medical_app/screens/dashboard.dart';
import 'package:medical_app/widgets/mybox.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async{
        Get.offAll(()=> const DashBoard());
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  //back button , title, notification button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: MyBox(
                          child: const Icon(Icons.arrow_back_outlined,size: 18,),
                        ),
                      ),
                      Text("P R O F I L E",style: style1,),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: MyBox(
                          child: const Icon(Icons.notifications_active,size: 18,),
                        ),
                      ),
                    ],
                  ),

                  //image , name, details
                  Card(
                    margin: const EdgeInsets.only(top: 20, bottom: 15),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/doctor.png",
                          height: 100,
                          width: 100,
                        ),
                        Positioned(
                          right: 5,
                          bottom: 5,
                          height: 20,
                          width: 20,
                          child: MyBox(
                            child: const Icon(
                              Icons.add,
                              size: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,width: 50,
                        child: MyBox(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/star.png",height: 14,color: Colors.yellow.shade900,),
                              Text("5.0",style: style,),
                            ],
                          ),
                        )),
                      ),
                      Column(
                        children: [
                          Text("Elsie Adkins",style: style,),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("elisie@gmail.com",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,width: 50,
                        child: MyBox(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("95%",style: style,),
                        )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30,top: 10),
                    child: SizedBox(
                      height: 50, width: 150,
                      child: MyBox(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Update Profile",style: style,),
                          const Icon(Icons.edit_outlined,size: 16,color: Colors.redAccent,)
                        ],
                      )),
                    ),
                  ),

                  //service history, report, medicine
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 80, width: width * 0.4,
                              child: MyBox(child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Service History",style: style,),
                                  Icon(Icons.medical_services_outlined,color: Colors.red.shade500,),
                                ],
                              )),
                            ),
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 80, width: width * 0.4,
                              child: MyBox(child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Reports",style: style,),
                                  Icon(Icons.document_scanner_outlined,color: Colors.blue.shade400,),
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: SizedBox(
                          height: 180, width: width* 0.4,
                          child: MyBox(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Image.asset("assets/images/medicine.png",height: 50,),
                              ),
                              Text("Medicine",style: style,),
                            ],
                          )),
                        ),
                      )
                    ],
                  ),

                  //logout button
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: SizedBox(
                      height: 40,width: 100,
                      child: MyBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Log out",style: style,),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(Icons.logout_rounded,size: 16,),
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
          ),
        ),
      ),
    );
  }
}
