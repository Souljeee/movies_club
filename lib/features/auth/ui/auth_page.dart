import 'package:flutter/material.dart';
import 'package:movies_club/common/res/colors.dart';
import 'package:movies_club/common/res/fonts_family.dart';
import 'package:movies_club/common/ui/widgets/action_button.dart';
import 'package:movies_club/common/ui/widgets/app_title.dart';
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
              const Center(
                child: AppTitle(),
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
              ActionButton(
                title: 'Войти',
                onTap: (){
                  // TODO
                },
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
