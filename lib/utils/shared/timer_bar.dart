import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/constants/logger.dart';
import 'package:todo/utils/shared/progress_bar.dart';

class TimerBar extends StatefulWidget {
  const TimerBar({super.key, required this.duration, required this.color});
  final Duration duration;
  final Color color;
  @override
  State<TimerBar> createState() => _TimerBarState();
}

class _TimerBarState extends State<TimerBar> {
  late Timer _timer;

  late DateTime _startTime;
  late DateTime _presentTime;
  double progress = 0;
  @override
  void initState() {
    _startTime = DateTime.now();

    _timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
      _presentTime = DateTime.now();

      var differcence = _presentTime.difference(_startTime);
      setState(() {
        progress = differcence.inMilliseconds.toDouble();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: widget.color.withOpacity(0.5),
          offset: Offset(0, 3),
          blurRadius: 6,
          spreadRadius: 1,
          blurStyle: BlurStyle.normal,
        ),
      ]),
      child: ProgressBar(progress: progress / widget.duration.inMilliseconds),
    );
  }
}
