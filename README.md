# flutter page change transition || @page_change_transitin || page_change_animation || page change animation

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

Lab: Write your first Flutter app
Cookbook: Useful Flutter samples
For help getting started with Flutter development, view the online documentation, which offers tutorials, samples, guidance on mobile development, and a full API reference.

**Create class CustomePageRoutes and extend PageRouteBuilder to change the page. Page Change Animation || transition**

import 'package:flutter/cupertino.dart';

class CustomePageRoutes extends PageRouteBuilder { final Widget childWidget; final AxisDirection direction; CustomePageRoutes({ required this.childWidget, this.direction = AxisDirection.right, }) : super( reverseTransitionDuration: const Duration(microseconds: 300), transitionDuration: const Duration(milliseconds: 300), pageBuilder: (context, animation, secondaryAnimation) => childWidget, );

@override Widget buildTransitions(BuildContext context, Animation animation, Animation secondaryAnimation, Widget child) => SlideTransition( position: Tween( begin: getBeginOffset(), end: Offset.zero, ).animate(animation), child: child, );

// sample transition with four options // Left, Right, Top and Bottom

Offset getBeginOffset() { switch (direction) { case AxisDirection.up: return const Offset(0, 1); case AxisDirection.down: return const Offset(0, -1); case AxisDirection.right: return const Offset(-1, 0); case AxisDirection.left: return const Offset(1, 0); } } }

** copy paste the below code onPress() method**

Navigator.of(context).push( CustomePageRoutes( childWidget: const SecondPage(), direction: AxisDirection.left, ), ),

Explore this for **Page change animation or Page change Transition**.

https://docs.flutter.dev/development/ui/widgets/animation
