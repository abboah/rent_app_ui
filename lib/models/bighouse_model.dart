import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigHouse {
  String image;
  String name;
  String location;
  String distance;
  String price;
  Widget space;

  BigHouse(
      {required this.image,
      required this.name,
      required this.location,
      required this.distance,
      required this.price,
      required this.space});

  static List<BigHouse> bigHouses = [];
  static void initialisebH() {
    bigHouses = [
      BigHouse(
        image: 'assets/images/h11.png',
        name: 'Dreamsville House',
        location: 'JL Sultan',
        distance: '1.8 km',
        price: 'Rp. 2.500.000.000 / Year',
        space: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/bed.png',
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Bedroom',
              style: GoogleFonts.raleway(),
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/bath.png'),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Bathroom',
              style: GoogleFonts.raleway(),
            ),
          ],
        ),
      ),
      BigHouse(
        image: 'assets/images/h2.png',
        name: 'Ascot House',
        location: 'JL Sultan',
        distance: '2.5 km',
        space: Row(
          children: <Widget>[
            Image.asset('assets/images/bed.png'),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Bedroom',
              style: GoogleFonts.raleway(),
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/bath.png'),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Bathroom',
              style: GoogleFonts.raleway(),
            ),
          ],
        ),
        price: 'Rp. 2.300.000.000 / Year',
      ),
    ];
  }
}
