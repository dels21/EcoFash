import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GridViews extends StatelessWidget {
  String name;
  int price;
  String url;
  GridViews(
      {super.key, required this.name, required this.price, required this.url});
  // const GridViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2 - 25,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/$url'), fit: BoxFit.cover),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0,0,5,5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '21WN',
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$$price',
                    style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(color: Colors.red)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
