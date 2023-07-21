import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:todo/extensions/context_Extension.dart';
import 'package:todo/extensions/sized_box.dart';

import '../../Pages/sign_up_page.dart';
import '../shared/text_fields.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      // autovalidateMode: AutovalidateMode.onUserInteraction,

      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NormalTextField(
            label: "Email",
            controller: emailController,
            //TODO: Change this
            validatorFunc: (p0) => EmailValidator.validate(emailController.text)
                ? null
                : "Please provide a valid email address ! Ex: name@xxx.com",
            inputAction: TextInputAction.next,
            inputType: TextInputType.emailAddress,
          ),
          16.ph,
          PasswordTextField(
            label: "Password",
            controller: passwordController,
            validatorFunc: (p0) =>
                p0!.isEmpty || p0.length < 6 ? "Error" : null,
          ),
          16.ph,

          /// You don't have an account  Sign Up button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "You don’t have an account ? ",
              ),
              // * Navigate to signup
              TextButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () => Navigator.of(context).pushReplacementNamed(
                  SignUpPage.routeName,
                ),
                child: const Text("Click Here !"),
              ),
            ],
          ),
          //* Forget Password button
          TextButton(
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {},
            child: Text(
              "Forget Password",
              style: context.textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
