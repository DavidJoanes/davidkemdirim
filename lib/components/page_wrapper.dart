// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:davidkemdirim/components/empty.dart';
import 'package:davidkemdirim/components/loading_slider.dart';
import 'package:flutter/material.dart';

class PageWrapper extends StatefulWidget {
  PageWrapper(
      {Key? key,
      required this.child,
      this.onLoadingAnimationDone,
      this.customLoadingAnimation = const Empty(),
      this.hasUnveilPageAnimation = true,
      this.reverseAnimationOnPop = true})
      : super(key: key);
  final VoidCallback? onLoadingAnimationDone;
  final Widget customLoadingAnimation;
  final bool hasUnveilPageAnimation;
  final bool reverseAnimationOnPop;
  final Widget child;

  @override
  State<PageWrapper> createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper>
    with TickerProviderStateMixin {
  late AnimationController forwardSlideController;
  late AnimationController unveilPageSlideController;
  // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Duration duration = Duration(seconds: 5);

  @override
  void initState() {
    forwardSlideController = AnimationController(
      vsync: this,
      duration: duration,
    );
    unveilPageSlideController = AnimationController(
      vsync: this,
      duration: duration,
    );

    if (widget.hasUnveilPageAnimation) {
      unveilPageSlideController.forward();
      unveilPageSlideController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          if (widget.onLoadingAnimationDone != null) {
            widget.onLoadingAnimationDone!();
          }
        }
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    forwardSlideController.dispose();
    unveilPageSlideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // simple hack to reverse animation when navigation is popped
    // I don't know if there's a better way to do this, but for now it works
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (forwardSlideController.isCompleted && widget.reverseAnimationOnPop) {
        forwardSlideController.reverse();
      }
    });
    return Stack(
      children: [
        widget.child,
        LoadingSlider(
          controller: forwardSlideController,
          width: size.width,
          height: size.height,
        ),
        widget.hasUnveilPageAnimation
            ? Positioned(
                left: 0,
                child: LoadingSlider(
                  controller: unveilPageSlideController,
                  curve: Curves.fastOutSlowIn,
                  width: size.width,
                  height: size.height,
                  isSlideForward: false,
                ),
              )
            : widget.customLoadingAnimation,
      ],
    );
  }
}
