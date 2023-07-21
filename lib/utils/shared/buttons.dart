import 'package:flutter/material.dart';

abstract class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
  });
  final VoidCallback onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SizedButton extends CustomButton {
  const SizedButton({
    super.key,
    required this.width,
    this.height = 50,
    required super.onPressed,
    required super.label,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            fixedSize: MaterialStatePropertyAll(
              Size(
                width,
                height,
              ),
            ),
          ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

class ExpandedButton extends CustomButton {
  /// Horizontally Expanded button.
  ///
  const ExpandedButton({
    super.key,
    required super.onPressed,
    required super.label,
    this.padding,
  });
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    fixedSize: const MaterialStatePropertyAll(
                      Size.fromHeight(50),
                    ),
                  ),
              onPressed: onPressed,
              child: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}
