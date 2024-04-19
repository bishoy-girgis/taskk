import 'package:flutter/material.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:sanai3ey/shared/constants/constants.dart';


class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLocationPicker(
        initZoom: 11,
        minZoomLevel: 5,
        maxZoomLevel: 16,
        trackMyPosition: true,
        searchBarHintText: 'Search for your building or area...',
        searchbarInputBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        searchbarInputFocusBorderp: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        searchbarBorderRadius: BorderRadius.circular(20.0),
        searchBarBackgroundColor: Colors.white,
        locationButtonBackgroundColor: secondaryColor,
        locationButtonsColor: Colors.white,
        zoomButtonsBackgroundColor: secondaryColor,
        zoomButtonsColor: Colors.white,
        selectedLocationButtonTextstyle: const TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold),
        mapLanguage: 'en',
        onError: (e) => print(e),
        selectLocationButtonHeight: 53,
        selectLocationButtonWidth: 296,
        selectLocationButtonText: 'Confirm PIN Location',
        selectLocationButtonStyle: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => secondaryColor),
            textStyle:MaterialStateProperty.resolveWith((states) => const TextStyle(color: Colors.white))
        ),
        onPicked: (pickedData) {
          print(pickedData.latLong.latitude);
          print(pickedData.latLong.longitude);
          print(pickedData.address);
          print(pickedData.addressData);
        },
        onChanged: (pickedData) {
          print(pickedData.latLong.latitude);
          print(pickedData.latLong.longitude);
          print(pickedData.address);
          print(pickedData.addressData);
        },

      ),
    );
  }
}
