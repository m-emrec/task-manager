import 'package:flutter/material.dart';
import 'package:todo/Pages/sign_up_page.dart';
import 'package:todo/constants/logger.dart';
import 'package:todo/extensions/context_Extension.dart';
import 'package:todo/extensions/sized_box.dart';
import 'package:todo/theme/theme.dart';
import 'package:todo/utils/shared/buttons.dart';
import 'package:todo/utils/shared/text_fields.dart';

import '../utils/Sign In page/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  static const routeName = "sign-in";
  SignInPage({super.key});

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Sign In",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: ExpandedButton(
        onPressed: () => formKey.currentState!.validate(),
        label: "Sign In",
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
                  child: SignInForm(formKey: formKey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
