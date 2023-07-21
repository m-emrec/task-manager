import 'package:flutter/material.dart';
import 'package:todo/constants/logger.dart';
import 'package:todo/providers/auth_providerd.dart';
import 'package:todo/theme/theme.dart';
import 'package:todo/utils/Sign%20Up%20Page/sign_up_form.dart';
import 'package:todo/utils/shared/buttons.dart';

import '../utils/shared/snack_bar.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = "sign-up";
  SignUpPage({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Sign Up",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: ExpandedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const InfoSnack(
              text: "Info",
            ),
          );
          // if (formKey.currentState!.validate()) {
          //   AuthProvider().signUpUser(
          //       _scaffoldKey, emailController.text, passwordController.text);
          // }
        },
        label: "Sign Up",
        padding: 16.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 9 / 10,
              child: Card(
                margin: const EdgeInsets.all(16),
                color: AppColors.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                  ),
                  child: SignUpForm(
                    formKey: formKey,
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
