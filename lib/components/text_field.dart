// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/text_container.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

// MAIN ENTRY FIELD
class RoundedInputFieldMain extends StatefulWidget {
  final TextEditingController controller;
  final double width;
  final double horizontalGap;
  final double verticalGap;
  final double radius;
  final String mainText;
  final String labelText;
  // final IconData icon;
  final bool isEnabled;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldMain({
    Key? key,
    required this.controller,
    required this.width,
    required this.horizontalGap,
    required this.verticalGap,
    required this.radius,
    required this.mainText,
    required this.labelText,
    // required this.icon,
    required this.isEnabled,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedInputFieldMain> createState() => _RoundedInputFieldMainState();
}

class _RoundedInputFieldMainState extends State<RoundedInputFieldMain> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer3(
      width: widget.width,
      horizontalGap: widget.horizontalGap,
      verticalGap: widget.verticalGap,
      radius: widget.radius,
      child: TextFormField(
        style: TextStyle(color: Colors.grey.shade900),
        controller: widget.controller,
        onChanged: widget.onChanged,
        cursorColor: Constants.SECONDARY_COLOR2,
        enabled: widget.isEnabled ? true : false,
        keyboardType: TextInputType.emailAddress,
        validator: (value) => value == null || value == '' ? 'Required!' : null,
        decoration: InputDecoration(
          // icon: Icon(
          //   widget.icon,
          //   color: primaryColor,
          // ),
          labelText: widget.labelText,
          hintText: widget.mainText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

// MAIN ENTRY FIELD 2
class RoundedInputFieldMain2 extends StatefulWidget {
  final TextEditingController controller;
  final double width;
  final double horizontalGap;
  final double verticalGap;
  final double radius;
  final String mainText;
  final String labelText;
  final bool isEnabled;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldMain2({
    Key? key,
    required this.controller,
    required this.width,
    required this.horizontalGap,
    required this.verticalGap,
    required this.radius,
    required this.mainText,
    required this.labelText,
    // required this.icon,
    required this.isEnabled,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedInputFieldMain2> createState() => _RoundedInputFieldMain2State();
}

class _RoundedInputFieldMain2State extends State<RoundedInputFieldMain2> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer3(
      width: widget.width,
      horizontalGap: widget.horizontalGap,
      verticalGap: widget.verticalGap,
      radius: widget.radius,
      child: TextFormField(
        style: TextStyle(color: Colors.grey.shade900),
        controller: widget.controller,
        onChanged: widget.onChanged,
        cursorColor: Constants.SECONDARY_COLOR2,
        enabled: widget.isEnabled ? true : false,
        maxLines: 5,
        keyboardType: TextInputType.emailAddress,
        validator: (value) => value == null || value == '' ? 'Required!' : null,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.mainText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

// MAIN ENTRY FIELD 2
class RoundedInputFieldMain3 extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  final int maxLines;
  final String mainText;
  final String labelText;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldMain3({
    Key? key,
    required this.controller,
    required this.icon,
    required this.iconColor,
    required this.textColor,
    required this.maxLines,
    required this.mainText,
    required this.labelText,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedInputFieldMain3> createState() => _RoundedInputFieldMain3State();
}

class _RoundedInputFieldMain3State extends State<RoundedInputFieldMain3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.WHITE_COLOR,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: TextFormField(
            style: TextStyle(color: widget.textColor),
            controller: widget.controller,
            onChanged: widget.onChanged,
            maxLines: widget.maxLines,
            cursorColor: Constants.SECONDARY_COLOR2,
            keyboardType: TextInputType.emailAddress,
            validator: (value) => value == null || value == '' ? 'Required!' : null,
            decoration: InputDecoration(
              icon: Icon(
                widget.icon,
                color: widget.iconColor,
              ),
              labelText: widget.labelText,
              hintText: widget.mainText,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedInputFieldEmail extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  RoundedInputFieldEmail({
    Key? key,
    required this.controller,
    required this.hintText,
    this.icon = Icons.mail,
    required this.iconColor,
    required this.textColor,
  }) : super(key: key);

  @override
  State<RoundedInputFieldEmail> createState() => _RoundedInputFieldEmailState();
}

class _RoundedInputFieldEmailState extends State<RoundedInputFieldEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.WHITE_COLOR,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: TextFormField(
          style: TextStyle(color: widget.textColor),
          controller: widget.controller,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          validator: (value) => value != null && !EmailValidator.validate(value)
              ? 'Enter a valid email!'
              : null,
          cursorColor: Constants.PRIMARY_COLOR,
          decoration: InputDecoration(
            icon: Icon(
              widget.icon,
              color: widget.iconColor,
            ),
            labelText: widget.hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
