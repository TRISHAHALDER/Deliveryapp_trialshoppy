
import 'package:flutter/material.dart';

class ConformationPage extends StatefulWidget {
  const ConformationPage({super.key});

  @override
  State<ConformationPage> createState() => _ConformationPageState();
}

class _ConformationPageState extends State<ConformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 150, left: 15, right: 20),
          child: Column(
            children: [
              Center(
                  child: Icon(
                Icons.check_circle_rounded,
                color: Colors.green,
                size: 100,
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Package Delivered",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your package has been delivered",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(
                height: 20,
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
                height: 15,
              ),
              Divider(),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Thankyou for choosing us",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                       color: Color.fromARGB(255, 249, 164, 74),
                       border: Border.all(color: Color.fromARGB(255, 250, 147, 38)),
                       borderRadius: BorderRadius.circular(15),
                     ),
                    child: TextButton(onPressed: (
                    ){
                      
                    }, child: Text("Done",style: TextStyle(color: Colors.black),))),
                
            ],
          ),
        ),
      ),
    );
  }
}
