import 'package:deliveryapp/deliverydetails/bookingnavigate.dart';
import 'package:deliveryapp/deliverydetails/packagebooking.dart';
import 'package:flutter/material.dart';

List<Widget> Pages = <Widget>[
  const DeliveryDetails(),

  const Bookingdetails(),
];
int _currentIndex = 0;
class Bookinginfo extends StatefulWidget {
  const Bookinginfo({super.key});

  @override
  State<Bookinginfo> createState() => _BookinginfoState();
}

class _BookinginfoState extends State<Bookinginfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Row(
                    
                    children: [
                      Icon(Icons.navigate_before,size: 30,),
                      SizedBox(width: 20,),
                      Text(
                        "Delivery",
                        style: TextStyle(decoration:TextDecoration.none,fontSize: 20, color: Colors.black,fontStyle: FontStyle.normal,letterSpacing: 0,fontWeight:FontWeight.bold),
                      )
                    ],
                  ),
      ),
      body: Pages[_currentIndex],
    );
  }
}