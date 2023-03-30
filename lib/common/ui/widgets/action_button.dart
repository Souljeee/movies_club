import 'package:flutter/material.dart';
import 'package:movies_club/common/res/colors.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ActionButton({
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 96),
        child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: ResColors.white,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: ResColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
