// import 'package:aerium/presentation/widgets/spaces.dart';
// import 'package:aerium/values/values.dart';
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

// import 'package:davidkemdirim/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainButton extends StatefulWidget {
  const MainButton({
    Key? key,
    required this.title,
    this.titleStyle,
    required this.width,
    required this.borderWidth,
    required this.height,
    required this.fontSize,
    required this.onPressed,
    required this.hasIcon,
    this.iconColor = Colors.white,
    required this.buttonColor,
    required this.borderColor,
    this.onHoverColor = Colors.white,
    this.iconData = FontAwesomeIcons.arrowRight,
    required this.iconSize,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.fastOutSlowIn,
    this.buttonStyle,
    this.isLoading = false,
  }) : super(key: key);

  final String title;
  final TextStyle? titleStyle;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final Color buttonColor;
  final Color borderColor;

  /// this is the color that shows when hovered
  final Color onHoverColor;
  final double width;
  final double borderWidth;
  final double height;
  final double fontSize;
  final ButtonStyle? buttonStyle;
  final Function onPressed;
  final Duration duration;
  final Curve curve;
  final bool hasIcon;
  final bool isLoading;

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _textAndIconColor;
  late Animation<Offset> _offsetAnimation;
  bool _isHovering = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _textAndIconColor = ColorTween(
      begin: widget.onHoverColor,
      end: widget.buttonColor,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0.5, 0),
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: _textAndIconColor.value,
      fontSize: widget.fontSize,
      fontWeight: FontWeight.w400,
    );
    final ButtonStyle defaultButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: widget.onHoverColor,
      foregroundColor: widget.onHoverColor,
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        side: BorderSide(
          width: 1,
          color: widget.borderColor,
        ),
      ),
    );
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: ElevatedButton(
          onPressed: () async {
            await widget.onPressed();
          },
          style: widget.buttonStyle ?? defaultButtonStyle,
          child: widget.hasIcon
              ? Stack(
                  children: [
                    animatedBackground(),
                    childWithIcon(),
                  ],
                )
              : Stack(
                  children: [
                    animatedBackground(),
                    Center(
                      child: Text(
                        widget.title,
                        style: widget.titleStyle ?? style,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget animatedBackground() {
    return Positioned(
      right: 0,
      child: AnimatedContainer(
        duration: widget.duration,
        width: _isHovering ? 0 : widget.width,
        height: widget.height,
        color: widget.buttonColor,
        curve: widget.curve,
      ),
    );
  }

  Widget childWithIcon() {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: _textAndIconColor.value,
      fontSize: widget.fontSize,
      fontWeight: FontWeight.w400,
    );
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: widget.titleStyle ?? style,
          ),
          SizedBox(width: 10),
          SlideTransition(
            position: _offsetAnimation,
            child: widget.isLoading
                ? SpinKitWanderingCubes(
                    color: _textAndIconColor.value,
                    size: 16.0,
                  )
                : Icon(
                    widget.iconData,
                    size: widget.iconSize,
                    color: _textAndIconColor.value,
                  ),
          )
        ],
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    if (hovering) {
      setState(() {
        _controller.forward();
        _isHovering = hovering;
      });
    } else {
      setState(() {
        _controller.reverse();
        _isHovering = hovering;
      });
    }
  }
}
