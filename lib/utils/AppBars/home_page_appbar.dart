import 'package:flutter/material.dart';
import 'package:todo/extensions/image_extension.dart';
import 'package:todo/utils/shared/circle_container.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,

        /// USer Image
        leading: ClipOval(
          child: Image.asset("home-avatar.png".toImg),
        ),

        title: Column(
          children: [
            /// USer name
            Text("User Name", style: Theme.of(context).textTheme.titleLarge),

            ///Today's Task count
            Text(
              "38 Task today",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        actions: [
          /// Navigates to Notifiaction Page
          GestureDetector(
            child: CircleContainer(
              child: Image.asset(
                "home-icon-notification-notification-box.png".toImg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
///


// class a implements AppBar{
//   a({super.key});

//   @override
//   // TODO: implement actions
//   List<Widget>? get actions => throw UnimplementedError();

//   @override
//   // TODO: implement actionsIconTheme
//   IconThemeData? get actionsIconTheme => throw UnimplementedError();

//   @override
//   // TODO: implement automaticallyImplyLeading
//   bool get automaticallyImplyLeading => throw UnimplementedError();

//   @override
//   // TODO: implement backgroundColor
//   Color? get backgroundColor => throw UnimplementedError();

//   @override
//   // TODO: implement bottom
//   PreferredSizeWidget? get bottom => throw UnimplementedError();

//   @override
//   // TODO: implement bottomOpacity
//   double get bottomOpacity => throw UnimplementedError();

//   @override
//   // TODO: implement centerTitle
//   bool? get centerTitle => throw UnimplementedError();

//   @override
//   // TODO: implement clipBehavior
//   Clip? get clipBehavior => throw UnimplementedError();

//   @override
//   StatefulElement createElement() {
//     // TODO: implement createElement
//     throw UnimplementedError();
//   }

//   @override
//   State<AppBar> createState() {
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
//   // TODO: implement elevation
//   double? get elevation => throw UnimplementedError();

//   @override
//   // TODO: implement excludeHeaderSemantics
//   bool get excludeHeaderSemantics => throw UnimplementedError();

//   @override
//   // TODO: implement flexibleSpace
//   Widget? get flexibleSpace => throw UnimplementedError();

//   @override
//   // TODO: implement forceMaterialTransparency
//   bool get forceMaterialTransparency => throw UnimplementedError();

//   @override
//   // TODO: implement foregroundColor
//   Color? get foregroundColor => throw UnimplementedError();

//   @override
//   // TODO: implement iconTheme
//   IconThemeData? get iconTheme => throw UnimplementedError();

//   @override
//   // TODO: implement key
//   Key? get key => throw UnimplementedError();

//   @override
//   // TODO: implement leading
//   Widget? get leading => throw UnimplementedError();

//   @override
//   // TODO: implement leadingWidth
//   double? get leadingWidth => throw UnimplementedError();

//   @override
//   // TODO: implement notificationPredicate
//   ScrollNotificationPredicate get notificationPredicate => throw UnimplementedError();

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();

//   @override
//   // TODO: implement primary
//   bool get primary => throw UnimplementedError();

//   @override
//   // TODO: implement scrolledUnderElevation
//   double? get scrolledUnderElevation => throw UnimplementedError();

//   @override
//   // TODO: implement shadowColor
//   Color? get shadowColor => throw UnimplementedError();

//   @override
//   // TODO: implement shape
//   ShapeBorder? get shape => throw UnimplementedError();

//   @override
//   // TODO: implement surfaceTintColor
//   Color? get surfaceTintColor => throw UnimplementedError();

//   @override
//   // TODO: implement systemOverlayStyle
//   SystemUiOverlayStyle? get systemOverlayStyle => throw UnimplementedError();

//   @override
//   // TODO: implement title
//   Widget? get title => throw UnimplementedError();

//   @override
//   // TODO: implement titleSpacing
//   double? get titleSpacing => throw UnimplementedError();

//   @override
//   // TODO: implement titleTextStyle
//   TextStyle? get titleTextStyle => throw UnimplementedError();

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
//   // TODO: implement toolbarHeight
//   double? get toolbarHeight => throw UnimplementedError();

//   @override
//   // TODO: implement toolbarOpacity
//   double get toolbarOpacity => throw UnimplementedError();

//   @override
//   // TODO: implement toolbarTextStyle
//   TextStyle? get toolbarTextStyle => throw UnimplementedError();



// }