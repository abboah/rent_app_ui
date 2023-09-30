import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/models/bighouse_model.dart';
import 'package:home_rent/models/smallhouse_model.dart';
import 'package:home_rent/screens/description_screen/components/gallery_images_list.dart';

class DescriptionScreen2 extends StatefulWidget {
  final SmallHouse models;
  const DescriptionScreen2({super.key, required this.models});

  @override
  State<DescriptionScreen2> createState() => _DescriptionScreen2State();
}

class _DescriptionScreen2State extends State<DescriptionScreen2> {
  @override
  void initState() {
    super.initState();
    BigHouse.initialisebH();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(
                              widget.models.image,
                            ),
                            fit: BoxFit.cover)),
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.transparent.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15)),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ))),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.transparent.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_outline_sharp,
                                    color: Colors.white,
                                  ))),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Container(
                            width: 300,
                            height: 90,
                            child: ListTile(
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.models.name,
                                    style: GoogleFonts.raleway(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    widget.models.location,
                                    style: GoogleFonts.raleway(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  widget.models.space
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Description',
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars',
                      style: GoogleFonts.raleway(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset('assets/images/profile.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Gary Allen',
                                  style: GoogleFonts.raleway(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Owner',
                                  style: GoogleFonts.raleway(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.message,
                                color: Colors.blueAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Gallery',
                  style: GoogleFonts.raleway(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    itemCount: gallery.length,
                    itemBuilder: (BuildContext context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            gallery[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: GoogleFonts.raleway(fontSize: 15),
                        ),
                        Text(
                          widget.models.price,
                          style: GoogleFonts.raleway(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(
                                160, 218, 251, 1.0), // Equivalent to #A0DAFB
                            Color.fromRGBO(
                                10, 142, 217, 1.0), // Equivalent to #0A8ED9
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Rent Now',
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
