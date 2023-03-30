import 'package:flutter/material.dart';
import 'package:movies_club/common/res/colors.dart';
import 'package:movies_club/common/res/fonts_family.dart';
import 'package:movies_club/features/auth/ui/widgets/auth_input_form.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _loginController = FormControl<String>(
    validators: [
      Validators.required,
    ],
  );

  final _passwordController = FormControl<String>(
    validators: [
      Validators.required,
    ],
  );

  final _loginFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  late final _authForm = FormGroup({
    'login': _loginController,
    'password': _passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _loginFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: ResColors.black,
        body: SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Center(
                child: Text(
                  'Movie Club',
                  style: TextStyle(
                    fontSize: 42,
                    fontFamily: FontsFamily.playfair.name,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: AuthInputForm(
                  loginController: _loginController,
                  passwordController: _passwordController,
                  loginFocusNode: _loginFocusNode,
                  passwordFocusNode: _passwordFocusNode,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  // TODO
                },
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
                        'Войти',
                        style: TextStyle(
                          color: ResColors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
