import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/models/bighouse_model.dart';
import 'package:home_rent/screens/description_screen/description_screen_1.dart';

class BigHome extends StatefulWidget {
  final BigHouse model;

  const BigHome({Key? key, required this.model}) : super(key: key);

  @override
  State<BigHome> createState() => _BigHomeState();
}

class _BigHomeState extends State<BigHome> {
  @override
  void initState() {
    super.initState();
    BigHouse.initialisebH();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        clipBehavior: Clip.none,
        elevation: 10, // Add elevation for a card-like effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Customize the card's shape
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          height: 300,
          width: 220,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(widget.model.image),
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on),
                      Text(
                        widget.model.distance,
                        style: GoogleFonts.raleway(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Container(
                  width: 200, // Adjust the width as needed
                  height: 60, // Adjust the height as needed
                  child: ListTile(
                    title: Text(
                      widget.model.name,
                      style: GoogleFonts.raleway(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      widget.model.location,
                      style: GoogleFonts.raleway(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
