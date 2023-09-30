import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/models/smallhouse_model.dart';

class SmallHome extends StatelessWidget {
  final SmallHouse model;
  const SmallHome({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          child: ListTile(
            leading: Container(
              width: 65,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(model.image), fit: BoxFit.cover)),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  model.name,
                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
                ),
                Text(
                  model.price,
                  style: GoogleFonts.raleway(color: Colors.blue),
                ),
                model.space,
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
