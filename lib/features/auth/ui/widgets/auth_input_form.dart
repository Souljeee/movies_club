import 'package:flutter/material.dart';
import 'package:movies_club/common/res/colors.dart';
import 'package:movies_club/common/ui/widgets/custom_text_field.dart';
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
        CustomTextField<String>(
          controller: widget.loginController,
          focusNode: widget.loginFocusNode,
          hintText: 'Логин',
          prefixIcon: Icon(
            Icons.person,
            color: ResColors.grayLight,
          ),
        ),
        const SizedBox(height: 16),
        CustomTextField<String>(
          focusNode: widget.passwordFocusNode,
          controller: widget.passwordController,
          hintText: 'Пароль',
          obscureText: _passwordVisibility,
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
        ),
      ],
    );
  }
}
