// ignore_for_file: prefer_const_constructors

import 'package:davidkemdirim/components/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainer1 extends StatelessWidget {
  final double width;
  final double radius;
  final Widget child;
  const TextFieldContainer1({
    Key? key,
    required this.width,
    required this.radius,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: size.width*0.01, vertical: size.height*0.001),
      width: width,
      decoration: BoxDecoration(
        color: Constants.OFF_WHITE_COLOR,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}

class TextFieldContainer2 extends StatelessWidget {
  final double width;
  final double radius;
  final Widget child;
  const TextFieldContainer2({
    Key? key,
    required this.width,
    required this.radius,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: size.width*0.01, vertical: size.height*0.001),
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}

class TextFieldContainer3 extends StatelessWidget {
  final Widget child;
  final double width;
  final double horizontalGap;
  final double verticalGap;
  final double radius;
  const TextFieldContainer3({
    Key? key,
    required this.child,
    required this.width,
    required this.horizontalGap,
    required this.verticalGap,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: verticalGap),
      padding: EdgeInsets.symmetric(
          horizontal: horizontalGap, vertical: verticalGap),
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}