// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:sanai3ey/shared/constants/constants.dart';
//
// class MapPage extends StatefulWidget {
//   const MapPage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MapPage> createState() => _MapPageState();
// }
//
// class _MapPageState extends State<MapPage> {
//
//   Position? _position;
//
//   void _getCurrentLocation() async {
//     Position position = await _determinePosition();
//     setState(() {
//       _position = position;
//     });
//   }
//
//   Future<Position> _determinePosition() async {
//     LocationPermission permission;
//
//     permission = await Geolocator.checkPermission();
//
//     if(permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if(permission == LocationPermission.denied) {
//         return Future.error('Location Permissions are denied');
//       }
//     }
//
//     return await Geolocator.getCurrentPosition();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Center(
//         child: _position != null ?
//         Text('Current Location: ' + _position.toString(),
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: primaryColor,
//             fontSize: 50
//           ) ,)
//             : Text('No Location Data',
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: primaryColor,
//               fontSize: 50
//           ) ,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _getCurrentLocation,
//         backgroundColor: primaryColor,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add ,color: Colors.white,size: 50,),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }