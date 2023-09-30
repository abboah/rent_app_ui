import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/models/bighouse_model.dart';
import 'package:home_rent/models/smallhouse_model.dart';
import 'package:home_rent/reusable_widgets/category_widget.dart';
import 'package:home_rent/screens/description_screen/components/description_screen_2.dart';
import 'package:home_rent/screens/description_screen/description_screen_1.dart';
import 'package:home_rent/screens/home_screen/components/bighouse_widget.dart';

import 'package:home_rent/screens/home_screen/components/dropdown_widget.dart';
import 'package:home_rent/screens/home_screen/components/searchbar_widget.dart';
import 'package:home_rent/screens/home_screen/components/smallhouse_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> locations = [
  'Jakarta',
  'Tokyo',
  'Helsinki',
  'Berlin',
  'Nairobi',
  'Rio',
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    BigHouse.initialisebH();
    SmallHouse.initialisesH();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Location",
                      style: GoogleFonts.raleway(),
                    ),
                    const LocationDropDown(),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                title: RoundedSearchInput(
                  textController: TextEditingController(),
                  hintText: 'Search address, or near you',
                ),
                trailing: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(15)),
                  child:
                      Center(child: Image.asset('assets/vectors/filter.png')),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: HorizontalCategoriesView(),
              ),
              ListTile(
                title: Text(
                  'Near from you',
                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'See more',
                  style: GoogleFonts.raleway(),
                ),
              ),
              Container(
                height: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: BigHouse.bigHouses.length,
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => DescriptionScreen(
                                        models: BigHouse.bigHouses[index])));
                          },
                          child: BigHome(model: BigHouse.bigHouses[index]));
                    }),
              ),
              ListTile(
                title: Text(
                  'Best for you',
                  style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'See more',
                  style: GoogleFonts.raleway(),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: SmallHouse.smallHouse.length,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => DescriptionScreen2(
                                        models: SmallHouse.smallHouse[index]),
                                  ),
                                );
                              },
                              child: SmallHome(
                                  model: SmallHouse.smallHouse[index]));
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
