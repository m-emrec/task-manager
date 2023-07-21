import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:todo/Pages/sign_in_page.dart';
import 'package:todo/extensions/context_Extension.dart';
import 'package:todo/extensions/sized_box.dart';

import '../../Pages/sign_up_page.dart';
import '../shared/text_fields.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;

  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NormalTextField(
            label: "Email",
            controller: emailController,
            validatorFunc: (p0) => EmailValidator.validate(emailController.text)
                ? null
                : "Please provie a valid email address ! \nEx: xxx@x.com",
            inputAction: TextInputAction.next,
          ),
          16.ph,
          PasswordTextField(
            label: "Password",
            controller: passwordController,
            validatorFunc: (p0) => p0!.length < 6
                ? "Your password must be longer than 6 characters ! "
                : null,
          ),
          16.ph,

          /// Already have an account  Sign In button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account ? ",
              ),
              // * Navigate to signup
              TextButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () => Navigator.of(context).pushReplacementNamed(
                  SignInPage.routeName,
                ),
                child: const Text("Click Here !"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
