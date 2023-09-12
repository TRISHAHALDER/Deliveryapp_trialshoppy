import 'package:deliveryapp/deliverytracking/checkout.dart';
import 'package:flutter/material.dart';

class Bookingdetails extends StatefulWidget {
  const Bookingdetails({super.key});

  @override
  State<Bookingdetails> createState() => _BookingdetailsState();
}

class _BookingdetailsState extends State<Bookingdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Row(
                    
                    children: [
                      
                      Text(
                        "Delivery",
                        style: TextStyle(decoration:TextDecoration.none,fontSize: 20, color: Colors.black,fontStyle: FontStyle.normal,letterSpacing: 0,fontWeight:FontWeight.bold),
                      )
                    ],
                  ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            child: SingleChildScrollView(
              
              child: Scrollbar(
                scrollbarOrientation: ScrollbarOrientation.bottom,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Booking Details",style: TextStyle(decoration: TextDecoration.none,fontSize: 15,color: Colors.black),),
                    SizedBox(height: 25,),
                    Text("Sender's Phone Number",style: TextStyle(decoration: TextDecoration.none,fontSize: 14,color: Colors.black),),
                    SizedBox(height: 7,),
                     Container(
                      height: 70,
                       decoration: BoxDecoration(
                         color: Color.fromARGB(255, 247, 249, 249),
                         border: Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15.0,top:10),
                         child: TextField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "Enter Sender's Phone Number ",
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 10,),
                    Text("Receiver's Name",style: TextStyle(decoration: TextDecoration.none,fontSize: 14,color: Colors.black),),
                    SizedBox(height: 7,),
                     Container(
                      height: 70,
                       decoration: BoxDecoration(
                         color: Color.fromARGB(255, 247, 249, 249),
                         border: Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15.0,top:10),
                         child: TextField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "Enter Receiver's Name",
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 10,),
                    Text("Receiver's Phone Number",style: TextStyle(decoration: TextDecoration.none,fontSize: 14,color: Colors.black),),
                    SizedBox(height: 7,),
                     Container(
                      height: 70,
                       decoration: BoxDecoration(
                         color: Color.fromARGB(255, 247, 249, 249),
                         border: Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15.0,top:10,right: 13),
                         child: TextField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "Enter Receiver's Phone Number",
                             suffixIcon: Icon(Icons.account_box_outlined,size: 35),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 150,),
                     Container(
                      width: 400,
                      height: 70,
                      decoration: BoxDecoration(
                         color: Color.fromARGB(255, 249, 164, 74),
                         border: Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                         borderRadius: BorderRadius.circular(15),
                       ),
                      child: TextButton(onPressed: (
                      ){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Trackdelivery()));
                      }, child: Text("Continue",style: TextStyle(color: Colors.black),))),
                 
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}