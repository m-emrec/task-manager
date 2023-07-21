import 'package:flutter/material.dart';
import 'package:todo/theme/theme.dart';
import 'package:todo/utils/shared/timer_bar.dart';

abstract class Snack extends SnackBar {
  const Snack({
    super.key,
    super.content = const SizedBox(),
    required this.text,
    this.kDuration,
    this.showTimer = true,
  });

  final Duration? kDuration;
  final bool showTimer;
  final String text;
  final TextStyle textStyle = const TextStyle();

  @override
  Color? get backgroundColor => const Color(0xFF039855);
  @override
  EdgeInsetsGeometry? get padding => EdgeInsets.zero;

  @override
  Widget get content => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: showTimer,
            child: TimerBar(
              duration: duration,
              color: backgroundColor!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ],
      );
  @override
  SnackBarBehavior? get behavior => SnackBarBehavior.floating;
  @override
  Duration get duration => kDuration ?? const Duration(seconds: 1);

  @override
  DismissDirection get dismissDirection => DismissDirection.horizontal;
}

class ErrorSnack extends Snack {
  const ErrorSnack({
    super.key,
    super.content,
    super.showTimer,
    required super.text,
    super.kDuration,
  });

  @override
  Duration get duration => kDuration ?? const Duration(seconds: 2);

  @override
  Color? get backgroundColor => AppColors.redColor;
}

class SuccesSnack extends Snack {
  const SuccesSnack({
    super.key,
    super.content,
    required super.text,
    super.kDuration,
  });

  @override
  bool get showTimer => false;

  @override
  Duration get duration => kDuration ?? const Duration(seconds: 1);

  @override
  Color? get backgroundColor => const Color(0xFF039855);
}

class InfoSnack extends Snack {
  const InfoSnack({
    super.key,
    super.content,
    required super.text,
    super.kDuration,
  });

  @override
  bool get showTimer => false;
  @override
  TextStyle get textStyle => TextStyle(
        color: AppColors.textColor,
      );
  @override
  Duration get duration => kDuration ?? const Duration(seconds: 1);

  @override
  Color? get backgroundColor => AppColors.primaryColor;
}


// class a implements SnackBar{
//   @override
//   // TODO: implement action
//   SnackBarAction? get action => throw UnimplementedError();

//   @override
//   // TODO: implement actionOverflowThreshold
//   double? get actionOverflowThreshold => throw UnimplementedError();

//   @override
//   // TODO: implement animation
//   Animation<double>? get animation => throw UnimplementedError();

//   @override
//   // TODO: implement backgroundColor
//   Color? get backgroundColor => throw UnimplementedError();

//   @override
//   // TODO: implement behavior
//   SnackBarBehavior? get behavior => throw UnimplementedError();

//   @override
//   // TODO: implement clipBehavior
//   Clip get clipBehavior => throw UnimplementedError();

//   @override
//   // TODO: implement closeIconColor
//   Color? get closeIconColor => throw UnimplementedError();

//   @override
//   // TODO: implement content
//   Widget get content => throw UnimplementedError();

//   @override
//   StatefulElement createElement() {
//     // TODO: implement createElement
//     throw UnimplementedError();
//   }

//   @override
//   State<SnackBar> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }

//   @override
//   List<DiagnosticsNode> debugDescribeChildren() {
//     // TODO: implement debugDescribeChildren
//     throw UnimplementedError();
//   }

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     // TODO: implement debugFillProperties
//   }

//   @override
//   // TODO: implement dismissDirection
//   DismissDirection get dismissDirection => throw UnimplementedError();

//   @override
//   // TODO: implement duration
//   Duration get duration => throw UnimplementedError();

//   @override
//   // TODO: implement elevation
//   double? get elevation => throw UnimplementedError();

//   @override
//   // TODO: implement key
//   Key? get key => throw UnimplementedError();

//   @override
//   // TODO: implement margin
//   EdgeInsetsGeometry? get margin => throw UnimplementedError();

//   @override
//   // TODO: implement onVisible
//   VoidCallback? get onVisible => throw UnimplementedError();

//   @override
//   // TODO: implement padding
//   EdgeInsetsGeometry? get padding => throw UnimplementedError();

//   @override
//   // TODO: implement shape
//   ShapeBorder? get shape => throw UnimplementedError();

//   @override
//   // TODO: implement showCloseIcon
//   bool? get showCloseIcon => throw UnimplementedError();

//   @override
//   DiagnosticsNode toDiagnosticsNode({String? name, DiagnosticsTreeStyle? style}) {
//     // TODO: implement toDiagnosticsNode
//     throw UnimplementedError();
//   }

//   @override
//   String toStringDeep({String prefixLineOne = '', String? prefixOtherLines, DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
//     // TODO: implement toStringDeep
//     throw UnimplementedError();
//   }

//   @override
//   String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
//     // TODO: implement toStringShallow
//     throw UnimplementedError();
//   }

//   @override
//   String toStringShort() {
//     // TODO: implement toStringShort
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement width
//   double? get width => throw UnimplementedError();

//   @override
//   SnackBar withAnimation(Animation<double> newAnimation, {Key? fallbackKey}) {
//     // TODO: implement withAnimation
//     throw UnimplementedError();
//   }
// }
