import 'package:flutter/material.dart';
import 'package:movies_club/common/res/colors.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthInputForm extends StatefulWidget {
  final FormControl<String> loginController;
  final FormControl<String> passwordController;
  final FocusNode loginFocusNode;
  final FocusNode passwordFocusNode;

  const AuthInputForm({
    required this.loginController,
    required this.passwordController,
    required this.loginFocusNode,
    required this.passwordFocusNode,
    Key? key,
  }) : super(key: key);

  @override
  State<AuthInputForm> createState() => _AuthInputFormState();
}

class _AuthInputFormState extends State<AuthInputForm> {
  var _passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReactiveTextField(
          style: TextStyle(
            color: ResColors.grayLight,
            fontWeight: FontWeight.w500,
          ),
          focusNode: widget.loginFocusNode,
          formControl: widget.loginController,
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
            hintText: 'Логин',
            prefixIcon: Icon(
              Icons.person,
              color: ResColors.grayLight,
            ),
            hintStyle: TextStyle(color: ResColors.grayLight),
          ),
          cursorColor: ResColors.grayLight,
          cursorWidth: 3,
        ),
        const SizedBox(height: 16),
        ReactiveTextField(
          style: TextStyle(
            color: ResColors.grayLight,
            fontWeight: FontWeight.w500,
          ),
          focusNode: widget.passwordFocusNode,
          formControl: widget.passwordController,
          obscureText: _passwordVisibility,
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
            hintText: 'Пароль',
            prefixIcon: Icon(
              Icons.key_outlined,
              color: ResColors.grayLight,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _passwordVisibility = !_passwordVisibility;
                });
              },
              child: Icon(
                _passwordVisibility ? Icons.visibility_off : Icons.visibility,
                color: ResColors.grayLight,
              ),
            ),
            hintStyle: TextStyle(color: ResColors.grayLight),
          ),
          cursorColor: ResColors.grayLight,
          cursorWidth: 3,
        ),
      ],
    );
  }
}
