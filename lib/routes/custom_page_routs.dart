import 'package:flutter/cupertino.dart';

class CustomePageRoutes extends PageRouteBuilder {
  final Widget childWidget;
  final AxisDirection direction;
  CustomePageRoutes({
    required this.childWidget,
    this.direction = AxisDirection.right,
  }) : super(
          reverseTransitionDuration: const Duration(microseconds: 300),
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) => childWidget,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: getBeginOffset(),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );

// sample transition with four options
// Left, Right, Top and Bottom

  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
