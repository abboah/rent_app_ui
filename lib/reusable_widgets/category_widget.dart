import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category {
  final String title;
  TextStyle style;
  bool isSelected;
  Category(this.title, this.isSelected, this.style);
}

List<Category> categoryList = [
  Category(
    "House",
    true,
    GoogleFonts.raleway(color: Colors.white),
  ),
  Category(
    "Apartment",
    false,
    GoogleFonts.raleway(color: Colors.black),
  ),
  Category(
    "Hotel",
    false,
    GoogleFonts.raleway(color: Colors.black),
  ),
  Category(
    "Villa",
    false,
    GoogleFonts.raleway(color: Colors.black),
  ),
  Category(
    "Cottage",
    false,
    GoogleFonts.raleway(color: Colors.black),
  ),
];

class HorizontalCategoriesView extends StatefulWidget {
  const HorizontalCategoriesView({Key? key}) : super(key: key);

  @override
  State<HorizontalCategoriesView> createState() =>
      _HorizontalCategoriesViewState();
}

class _HorizontalCategoriesViewState extends State<HorizontalCategoriesView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryCard(
              category: categoryList[index],
              onPressed: (b) {
                for (var category in categoryList) {
                  category.isSelected = false;
                }
                setState(() {
                  categoryList[index].isSelected = true;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  final Category category;
  final Function(bool) onPressed;

  const CategoryCard(
      {required this.category, required this.onPressed, Key? key})
      : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: widget.category.isSelected
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(160, 218, 251, 1.0), // Equivalent to #A0DAFB
                  Color.fromRGBO(10, 142, 217, 1.0), // Equivalent to #0A8ED9
                ],
              )
            : LinearGradient(colors: [
                Colors.grey[200]!,
                Colors.grey[200]!,
              ]),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            widget.onPressed(true);
          },
          child: Text(widget.category.title,
              style: GoogleFonts.raleway(
                  color: widget.category.isSelected
                      ? Colors.black
                      : Colors.grey))),
    );
  }
}
