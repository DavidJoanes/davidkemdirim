import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key, required this.desktopScreen, required this.tabletScreen, required this.mobileScreen}) : super(key: key);
  final Widget? desktopScreen;
  final Widget? tabletScreen;
  final Widget? mobileScreen;

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return widget.desktopScreen!;
      } else if (constraints.maxWidth >= 700 && constraints.maxWidth < 1200) {
        return widget.tabletScreen!;
      } else {
        return widget.mobileScreen!;
      }
    });
  }
}