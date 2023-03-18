import 'package:flutter/material.dart';

class Doctor_Card extends StatelessWidget {
  Doctor_Card({
    super.key,required this.details,required this.name,required this.img
  });
  String ?name, details,img;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("${name}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("${details}",style: TextStyle(fontSize: 16,color: Colors.grey),),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  child: Image.asset("${img}",),
                ),
              ],
            ),
            Divider(height: 20,color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month_rounded,color: Colors.grey,size: 16,),
                    Text(" 12/03/2023",style: TextStyle(fontSize: 14,color: Colors.black),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.access_time_sharp,color: Colors.grey,size: 16,),
                    Text(" 10:30 AM",style: TextStyle(fontSize: 14,color: Colors.black),)
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/dot.png",height: 10,color: Colors.green,),
                    Text(" Confirmed",style: TextStyle(fontSize: 14,color: Colors.black),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 14),
                      decoration: BoxDecoration(color: Color(0xfff4f5f9),
                        borderRadius: BorderRadius.circular(10),),
                      child: Text("Cancle",style: TextStyle(fontSize: 16,color: Colors.black),),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 14),
                      decoration: BoxDecoration(color: Color(0xff695cd5),
                        borderRadius: BorderRadius.circular(10),),
                      child: Text("Reschedule",style: TextStyle(fontSize: 16,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}