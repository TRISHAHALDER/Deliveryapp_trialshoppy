
import 'package:deliveryapp/deliverytracking/liveordertrackingpage.dart';
import 'package:flutter/material.dart';

class Trackdelivery extends StatefulWidget {
  const Trackdelivery({super.key});

  @override
  State<Trackdelivery> createState() => _TrackdeliveryState();
}

class _TrackdeliveryState extends State<Trackdelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Checkout",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 10),
        child: Container(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bill Details",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/location.png",
                    height: 50,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vijay Complex Bhavanipur colony",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Paradise Recidency Bhavanipur colony",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "4 Km | 30-35 Min Delivery",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Tip the driver",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 250, 147, 38),
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                      onPressed: (){},
                      child: Center(
                        child: Text(
                          "₹ 10",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "₹ 20",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "₹ 30",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "₹ 40",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Charges",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 250, 147, 38),
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Delivery Charge",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "₹ 80/-",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 153,
                  ),
                  Text(
                    "₹ 80/-",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 60,
              ),
              Divider(
                color: Color.fromARGB(255, 250, 147, 38),
              ),
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 40,
                        color: Color.fromARGB(255, 250, 147, 38),
                      ),
                      Icon(
                        Icons.percent_rounded,
                        size: 27,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    " Apply Coupon",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 250, 147, 38),
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.navigate_next),
                    iconSize: 30,
                  ),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 250, 147, 38),
              ),
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.money_sharp,
                        size: 40,
                        color: Color.fromARGB(255, 250, 147, 38),
                      ),
                      Icon(
                        Icons.percent_rounded,
                        size: 27,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    " Cash",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 250, 147, 38),
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(
                    width: 193,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.navigate_next),
                    iconSize: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 164, 74),
                    border:
                        Border.all(color: Color.fromARGB(255, 250, 147, 38)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderTrackingPage()));
                      },
                      child: Text(
                        "Make Payment",
                        style: TextStyle(color: Colors.black),
                      ))),
            ],
          )),
        ),
      ),
    );
  }
}
