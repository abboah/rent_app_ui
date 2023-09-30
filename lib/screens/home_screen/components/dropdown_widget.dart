import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/screens/home_screen/home_screen.dart';

class LocationDropDown extends StatefulWidget {
  const LocationDropDown({super.key});

  @override
  State<LocationDropDown> createState() => _LocationDropDownState();
}

class _LocationDropDownState extends State<LocationDropDown> {
  String? selectedLocation;
  void _onLocationChanged(String? newValue) {
    setState(() {
      selectedLocation = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedLocation,
      onChanged: _onLocationChanged,
      items: locations.map((location) {
        return DropdownMenuItem<String>(
            value: location,
            child: Text(
              location,
              style: GoogleFonts.raleway(
                fontSize: 25,
              ),
            ));
      }).toList(),
      hint: Text(
        'Select Location',
        style: GoogleFonts.raleway(),
      ),
    );
  }
}
