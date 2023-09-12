import 'package:deliveryapp/deliverydetails/bookingnavigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DeliveryDetails extends StatefulWidget {
  const DeliveryDetails({super.key});

  @override
  State<DeliveryDetails> createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.navigate_before,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Delivery",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: SingleChildScrollView(
            child: Scrollbar(
              scrollbarOrientation: ScrollbarOrientation.bottom,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address Details",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Pickup Address",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 249),
                      border:
                          Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Pickup Address',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 249),
                      border:
                          Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Delivery Address',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Package Contents",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 249),
                      border:
                          Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'e.g Food Medicines',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                      width: 400,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 164, 74),
                        border: Border.all(
                            color: Color.fromARGB(255, 214, 205, 205)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bookingdetails()));
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(color: Colors.black),
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
