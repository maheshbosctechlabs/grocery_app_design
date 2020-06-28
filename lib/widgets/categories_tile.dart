import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesTile extends StatelessWidget {
  final Color color;
  final String title;
  final String assetPath;

  const CategoriesTile({Key key, this.color, this.title, this.assetPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Image.asset(
            this.assetPath,
          ),
        ),
        SizedBox(height: 5),
        Text(this.title,style: GoogleFonts.varelaRound(fontWeight: FontWeight.w500),)
      ],
    );
  }
}
