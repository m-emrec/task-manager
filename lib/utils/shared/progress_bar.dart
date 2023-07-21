import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, required this.progress});
  final double progress;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: LinearProgressIndicator(
        value: progress,
        backgroundColor: const Color(0xFFF4EBFF),
        color: AppColors.secondaryColor,
      ),
    );
  }
}
