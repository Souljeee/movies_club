import 'package:flutter/material.dart';
import 'package:movies_club/common/res/fonts_family.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Movie Club',
      style: TextStyle(
        fontSize: 42,
        fontFamily: FontsFamily.playfair.name,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}
