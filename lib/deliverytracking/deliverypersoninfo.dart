

import 'package:deliveryapp/deliverytracking/deliveryconformationpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
const LatLng currlocation = LatLng(100, 30);
const LatLng destinationlocation = LatLng(107, 36);
class deliverypersoninfo extends StatefulWidget {
  const deliverypersoninfo({super.key});

  @override
  State<deliverypersoninfo> createState() => _deliverypersoninfoState();
}

class _deliverypersoninfoState extends State<deliverypersoninfo> {
  
  Map<String, Marker> _markers = {};
  bool Showbottombar=false;
    addMarker(String id, LatLng location) {
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow:
            const InfoWindow(title: 'Place Name', snippet: 'Description'));
    _markers[id] = marker;
    setState(() {});
  }
 
  final String google_api_key = "com.google.android.geo.API_KEY";
  
  static const LatLng sourceLocation =
      LatLng(25.60328457587036, 85.21954238312597);
  static const LatLng  destination =
      LatLng(25.62019921529748, 85.14533399216478);
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  List<LatLng> polylineCoordinates = [
    LatLng(25.60328457587036, 85.21954238312597),
    LatLng(25.598646181369908, 85.20250527177583),
    LatLng(25.603646831433306, 85.18567894199064),
    LatLng(25.62019921529748, 85.14533399216478)
  ];
  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), "assets/scooter_PNG11341.png")
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }
  }
 
  @override
  void initState() {
    getPolyPoints();
    addCustomIcon();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //var threshold=100;
    return Scaffold(
      
     // backgroundColor:const Color.fromARGB(255, 134, 44, 44),
      body: GestureDetector(
        //on swipping it goes down

        onTapDown: (details) {
          this.setState(() {
            Showbottombar=false;
          });
        },
        //on tap it goes up

        onTapUp: (details) {
         
          this.setState(() {
            Showbottombar=true;
          });
        },
        // onPanEnd: (details) {
        //   if(details.velocity.pixelsPerSecond.dy > threshold){
        //     this.setState(() {
        //       Showbottombar=false;
        //     });
        //   }else if(details.velocity.pixelsPerSecond.dy <(-threshold)){
        //      this.setState(() {
        //       Showbottombar=true;
        //     });
        //   }
        // },
        child: Container(
          child: Stack(
            children:<Widget> [
              GoogleMap(
            initialCameraPosition:
                CameraPosition(target: sourceLocation, zoom: 15),
            polylines: {
              Polyline(
                polylineId: PolylineId("route"),
                points: polylineCoordinates,
                color: Colors.purple,
                width: 6,
              ),
            },
            markers: {
              Marker(
                  markerId: MarkerId("source"),
                  position: sourceLocation,
                  infoWindow: InfoWindow(title: "patna", snippet: " NIT Ghat"),
                  icon: BitmapDescriptor.defaultMarker),
              Marker(
                  markerId: MarkerId("destination"),
                  infoWindow: InfoWindow(title: "patna", snippet: "Gandhi Maidan"),
                  position: destination,
                  icon: markerIcon),
            },
          ),
              
              //bottom bar for the delivery person info
              Positioned(
                left: 0,
                bottom:Showbottombar?-23:-(height/3+20),
                // -(MediaQuery.of(context).size.height/3),
                child: deliveryperson(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class deliveryperson extends StatelessWidget {
 // const deliveryperson({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        color: Colors.white,
        width: width,
        height: (height / 3)+60,
        child: Padding(
          
          padding: const EdgeInsets.symmetric(vertical: 25.0),
         
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.only(left:50,right:10),
                child: Row(
                 
                  children: <Widget>[
                    
                   
                    Text(
                      "Reaching In",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(width: 45,),
                    Container(
                      decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(5)
                    ),
                      child: Text(
                        "5 Mins",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left:25,right:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/deliveryperson.png"),
                  
                    ),
                    SizedBox(width: 130,),
                    Column(
                      children: [
                        Text(
                          "Ashok Kumar",
                          style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "3.9",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left:10,right:10),
                child: Row(
                  children: [
                   
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Send Message to Driver',
                            prefixIcon: Icon(Icons.message_outlined),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                   Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //this nevigates to package delivered page
                     child: IconButton(
                          onPressed: () {
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConformationPage()));
                          },
                          icon: Icon(
                            Icons.call,
                            color: Colors.amber,
                          )),
                   )
                  ],
                ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}
