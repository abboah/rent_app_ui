import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallHouse {
  String image;
  String name;
  String location;
  String price;
  Widget space;
  String distance;

  SmallHouse({
    required this.image,
    required this.name,
    required this.price,
    required this.space,
    required this.distance,
    required this.location,
  });

  static List<SmallHouse> smallHouse = [];
  static void initialisesH() {
    smallHouse = [
      SmallHouse(
        image: 'assets/images/orchad.png',
        name: 'Orchad House',
        price: 'Rp. 2.500.000.000 / Year',
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
        location: '',
        distance: '',
      ),
      SmallHouse(
        image: 'assets/images/hollies.png',
        name: 'The Hollies House',
        price: 'Rp. 2.000.000.000 / Year',
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
        distance: '',
        location: '',
      ),
      SmallHouse(
        image: 'assets/images/breeze.png',
        name: 'Sea Breezes House',
        price: 'Rp. 900.000.000 / Year',
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
        distance: '',
        location: '',
      ),
      SmallHouse(
        image: 'assets/images/copse.png',
        name: 'Little Copse House',
        price: 'Rp. 900.000.000 / Year',
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
        distance: '',
        location: '',
      ),
    ];
  }
}
