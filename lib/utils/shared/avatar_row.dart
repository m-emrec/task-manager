import 'package:flutter/material.dart';
import 'package:todo/extensions/image_extension.dart';

class AvatarRow extends StatelessWidget {
  const AvatarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Transform(
          transform:
              Matrix4.translationValues(0 - (index.toDouble() * 5), 1, 0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 0.75,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              shape: BoxShape.circle,
            ),
            width: 24,
            height: 24,
            child: Image.asset("home-avatar.png".toImg),
          ),
        ),
      ),
    );
  }
}
