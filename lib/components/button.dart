// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:davidkemdirim/components/constants.dart';

class RoundedButton1 extends StatefulWidget {
  final String text;
  final Color color, textColor;
  final Function onPressed;
  const RoundedButton1({
    Key? key,
    required this.text,
    required this.color,
    this.textColor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<RoundedButton1> createState() => _RoundedButton1State();
}

class _RoundedButton1State extends State<RoundedButton1> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.2,
      child: isHover == false
          ? Stack(children: [
              CircleAvatar(backgroundColor: Constants.SECONDARY_COLOR2),
              TextButton(
                  onHover: setHover(),
                  onPressed: () async {
                    await widget.onPressed();
                  },
                  child: TextButton(
                    child: Text(
                      widget.text,
                      style: TextStyle(color: Constants.WHITE_COLOR),
                    ),
                    onPressed: () async {
                      await widget.onPressed();
                    },
                  ))
            ])
          : Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                ),
                newElevatedButton(context)
              ],
            ),
    );
  }

  setHover<bool>() {
    setState(() {
      isHover = true;
    });
  }

  Widget newElevatedButton(BuildContext context) {
    return ElevatedButton(
        onHover: setHover(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(widget.color),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 10, vertical: 16)),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () async {
          widget.onPressed();
        });
  }
}

// GENERAL
class RoundedButtonGeneral extends StatefulWidget {
  final String text1;
  final String text2;
  final double width;
  final double height;
  final double fontSize;
  final Color color, textColor;
  bool isLoading;
  final Function update;
  RoundedButtonGeneral({
    Key? key,
    required this.text1,
    required this.text2,
    required this.width,
    required this.height,
    required this.fontSize,
    required this.color,
    this.textColor = Colors.white,
    required this.isLoading,
    required this.update,
  }) : super(key: key);

  @override
  State<RoundedButtonGeneral> createState() => _RoundedButtonGeneralState();
}

class _RoundedButtonGeneralState extends State<RoundedButtonGeneral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: widget.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(1),
        child: newElevatedButton(context),
      ),
    );
  }

  Widget newElevatedButton(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(widget.color),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 1, vertical: widget.height)),
        ),
        child: widget.isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    widget.text2,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: widget.fontSize),
                  ),
                ],
              )
            : Text(
                widget.text1,
                style: TextStyle(
                    color: widget.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: widget.fontSize),
              ),
        onPressed: () async {
          if (widget.isLoading) return;

          setState(() => widget.isLoading = true);
          await widget.update();
          // await Future.delayed(const Duration(seconds: 2));
          setState(() => widget.isLoading = false);
        });
  }
}
