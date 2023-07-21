import 'package:flutter/material.dart';
import 'package:todo/extensions/sized_box.dart';
import 'package:todo/theme/theme.dart';
import 'package:todo/utils/shared/avatar_row.dart';
import 'package:todo/utils/shared/circle_container.dart';
import 'package:todo/utils/shared/progress_bar.dart';

class CategorieCard extends StatelessWidget {
  const CategorieCard(
      {super.key,
      required this.title,
      required this.projectCount,
      required this.avatars,
      required this.progress,
      required this.icon});

  final String title;
  final int projectCount;
  final List avatars;
  final double progress;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 24,
        ),
        // height: h * 0.3,
        width: w * 0.65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: Color(0x07101828),
              blurRadius: 6,
              offset: Offset(0, 4),
              spreadRadius: -2,
            ),
            BoxShadow(
              color: Color(0x14101828),
              blurRadius: 16,
              offset: Offset(0, 2),
              spreadRadius: -4,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// icon
            const CircleContainer(
              padding: 12,
              child: FlutterLogo(),
            ),
            16.ph,

            /// title
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            // prject count
            Text(
              "$projectCount Projects",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            32.ph,

            // avatars
            const AvatarRow(),

            12.ph,

            //progress bar
            ProgressBar(
              progress: progress,
            ),

            4.ph,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Progress",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  "%${progress * 100}",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
