import 'package:flutter/material.dart';
import 'package:movies_club/common/res/colors.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CustomTextField<T> extends StatelessWidget {
  final FormControl<T> controller;
  final FocusNode? focusNode;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  const CustomTextField({
    required this.controller,
    this.focusNode,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      obscureText: obscureText,
      style: TextStyle(
        color: ResColors.grayLight,
        fontWeight: FontWeight.w500,
      ),
      focusNode: focusNode,
      formControl: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ResColors.gray,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ResColors.transparent),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ResColors.transparent),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ResColors.transparent),
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(color: ResColors.grayLight),
      ),
      cursorColor: ResColors.grayLight,
      cursorWidth: 3,
    );
  }
}
