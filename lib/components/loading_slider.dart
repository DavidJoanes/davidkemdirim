// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:davidkemdirim/components/constants.dart';
import 'package:flutter/material.dart';

class LoadingSlider extends AnimatedWidget {
  LoadingSlider({
    Key? key,
    required this.width,
    required this.height,
    required this.controller,
    this.curve = Curves.fastLinearToSlowEaseIn,
    this.isSlideForward = true,
  }) : super(key: key, listenable: controller);

  final AnimationController controller;
  final Curve curve;
  final double width;
  final double height;
  final bool isSlideForward;

  Animation<double> get forwardSlideAnimation => Tween<double>(
        begin: 0,
        end: width,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: curve,
        ),
      );

  Animation<double> get backwardsSlideAnimation => Tween<double>(
        begin: width,
        end: 0,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: curve,
        ),
      );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: height,
        width: isSlideForward
            ? forwardSlideAnimation.value
            : backwardsSlideAnimation.value,
        color: Constants.BLACK_COLOR,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   Constants.NAME,
            //   style: TextStyle(
            //     fontFamily: 'Poppins',
            //     fontSize: size.width * 0.03,
            //     fontWeight: FontWeight.bold,
            //     color: Constants.WHITE_COLOR,
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.2, vertical: size.height * 0.05),
              child: Divider(
                  height: size.height * 0.03, color: Constants.WHITE_COLOR),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
              child: Divider(
                  height: size.height * 0.03, color: Constants.WHITE_COLOR),
            ),
          ],
        )));
  }
}
