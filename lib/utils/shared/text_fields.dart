import 'package:flutter/material.dart';
import 'package:todo/constants/logger.dart';
import 'package:todo/theme/theme.dart';

abstract class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    this.elevation = true,
    required this.validatorFunc,
    this.inputAction = TextInputAction.done,
    this.inputType = TextInputType.name,
  });

  final String label;
  final TextEditingController controller;
  final bool elevation;
  final String? Function(String?) validatorFunc;
  final TextInputAction inputAction;
  final TextInputType inputType;

  final FocusNode _focusNode = FocusNode();

  Widget child({
    InputDecoration decoration = const InputDecoration(),
    BoxDecoration boxDecoration = const BoxDecoration(),
    bool obscureText = false,
  }) {
    /*
Container(
      decoration: boxDecoration.copyWith(
        borderRadius: BorderRadius.circular(16),
        boxShadow: elevation
            ? [
                const BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ]
            : [],
      ),
    */
    return Card(
      color: Colors.transparent,
      shadowColor: const Color(0x3F000000),
      elevation: elevation ? 3 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLines: 1,
        focusNode: _focusNode,
        onTapOutside: (event) {
          _focusNode.unfocus();
        },
        validator: validatorFunc,
        obscureText: obscureText,
        controller: controller,
        decoration: decoration.copyWith(
          label: Text(label),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.redColor,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          errorMaxLines: 2,
          errorStyle: TextStyle(
            fontSize: 12,
            color: AppColors.redColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        textInputAction: inputAction,
        keyboardType: inputType,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}

class NormalTextField extends CustomTextField {
  NormalTextField({
    super.key,
    required super.label,
    required super.controller,
    required super.validatorFunc,
    super.inputAction,
    super.inputType,
    super.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return child(
      decoration: const InputDecoration(),
      boxDecoration: const BoxDecoration(),
    );
  }
}

class PasswordTextField extends CustomTextField {
  PasswordTextField({
    super.key,
    required super.label,
    required super.controller,
    required super.validatorFunc,
    super.inputAction,
    super.inputType,
    super.elevation,
  });

  @override
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return StatefulBuilder(
      builder: (context, setState) {
        return child(
          obscureText: obscureText,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(
                  () {
                    obscureText = !obscureText;
                  },
                );
              },
              icon: Icon(
                obscureText ? Icons.lock_outline_rounded : Icons.lock_open,
              ),
            ),
          ),
        );
      },
    );
  }
}
