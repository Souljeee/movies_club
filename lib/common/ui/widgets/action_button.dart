import 'package:flutter/material.dart';
import 'package:movies_club/common/res/colors.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const ActionButton({
    required this.title,
    this.onTap,
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
            color: onTap != null ? ResColors.white : ResColors.grayLight,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: onTap != null ? ResColors.black : ResColors.white,
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
