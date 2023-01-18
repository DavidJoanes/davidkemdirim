// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({Key? key, required this.headerColor}) : super(key: key);
  final Color headerColor;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late List<bool> isSelected = [
    false,
    false,
    false,
    false,
  ];
  late List<bool> hover = [
    false,
    false,
    false,
    false,
  ];
  // late List pages = [
  //   Home(),
  //   Center(child: Text('About')),
  //   Center(child: Text('Certificates')),
  //   Center(child: Text('Contact')),
  // ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
        desktopScreen: Container(
          height: size.height * 0.1,
          width: size.width,
          color: widget.headerColor,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(Constants.LOGO,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.width * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Constants.BLACK_COLOR2)),
            SizedBox(width: size.width * 0.4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNavigations(
                    context: context,
                    hover: hover[0],
                    text: "Home",
                    press: () {
                      setState(() {
                        hover[0] = true;
                        hover[1] = false;
                        hover[2] = false;
                        hover[3] = false;
                        isSelected[0] = true;
                        isSelected[1] = false;
                        isSelected[2] = false;
                        isSelected[3] = false;
                      });
                      selectedItem(context, CurrentPage != "home" ? 0 : 4);
                    }),
                SizedBox(width: size.width * 0.01),
                buildNavigations(
                    context: context,
                    hover: hover[1],
                    text: "About",
                    press: () {
                      setState(() {
                        hover[0] = false;
                        hover[1] = true;
                        hover[2] = false;
                        hover[3] = false;
                        isSelected[0] = false;
                        isSelected[1] = true;
                        isSelected[2] = false;
                        isSelected[3] = false;
                      });
                      selectedItem(context, CurrentPage != "about" ? 1 : 4);
                    }),
                SizedBox(width: size.width * 0.01),
                buildNavigations(
                    context: context,
                    hover: hover[2],
                    text: "Certifications",
                    press: () {
                      setState(() {
                        hover[0] = false;
                        hover[1] = false;
                        hover[2] = true;
                        hover[3] = false;
                        isSelected[0] = false;
                        isSelected[1] = false;
                        isSelected[2] = true;
                        isSelected[3] = false;
                      });
                      selectedItem(
                          context, CurrentPage != "certifications" ? 2 : 4);
                    }),
                SizedBox(width: size.width * 0.01),
                buildNavigations(
                    context: context,
                    hover: hover[3],
                    text: "Contact",
                    press: () {
                      setState(() {
                        hover[0] = false;
                        hover[1] = false;
                        hover[2] = false;
                        hover[3] = true;
                        isSelected[0] = false;
                        isSelected[1] = false;
                        isSelected[2] = false;
                        isSelected[3] = true;
                      });
                      selectedItem(context, CurrentPage != "contact" ? 3 : 4);
                    }),
              ],
            )
          ]),
        ),
        tabletScreen: Container(
          height: size.height * 0.1,
          width: size.width,
          color: widget.headerColor,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(Constants.LOGO,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.width * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Constants.BLACK_COLOR2)),
            SizedBox(width: size.width * 0.1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNavigations(
                    context: context,
                    hover: hover[0],
                    text: "Home",
                    press: () {
                      setState(() {
                        hover[0] = true;
                        hover[1] = false;
                        hover[2] = false;
                        hover[3] = false;
                        isSelected[0] = true;
                        isSelected[1] = false;
                        isSelected[2] = false;
                        isSelected[3] = false;
                      });
                      selectedItem(context, CurrentPage != "home" ? 0 : 4);
                    }),
                SizedBox(width: size.width * 0.01),
                buildNavigations(
                    context: context,
                    hover: hover[1],
                    text: "About",
                    press: () {
                      setState(() {
                        hover[0] = false;
                        hover[1] = true;
                        hover[2] = false;
                        hover[3] = false;
                        isSelected[0] = false;
                        isSelected[1] = true;
                        isSelected[2] = false;
                        isSelected[3] = false;
                      });
                      selectedItem(context, CurrentPage != "about" ? 1 : 4);
                    }),
                SizedBox(width: size.width * 0.01),
                buildNavigations(
                    context: context,
                    hover: hover[2],
                    text: "Certifications",
                    press: () {
                      setState(() {
                        hover[0] = false;
                        hover[1] = false;
                        hover[2] = true;
                        hover[3] = false;
                        isSelected[0] = false;
                        isSelected[1] = false;
                        isSelected[2] = true;
                        isSelected[3] = false;
                      });
                      selectedItem(
                          context, CurrentPage != "certifications" ? 2 : 4);
                    }),
                SizedBox(width: size.width * 0.01),
                buildNavigations(
                    context: context,
                    hover: hover[3],
                    text: "Contact",
                    press: () {
                      setState(() {
                        hover[0] = false;
                        hover[1] = false;
                        hover[2] = false;
                        hover[3] = true;
                        isSelected[0] = false;
                        isSelected[1] = false;
                        isSelected[2] = false;
                        isSelected[3] = true;
                      });
                      selectedItem(context, CurrentPage != "contact" ? 3 : 4);
                    }),
              ],
            )
          ]),
        ),
        mobileScreen: AppBar(
          toolbarHeight: size.height * 0.1,
          backgroundColor: widget.headerColor,
          elevation: 0,
          iconTheme: IconThemeData(color: Constants.BLACK_COLOR2),
          title: TextButton(
            child: Text(Constants.LOGO,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Constants.BLACK_COLOR2)),
            onPressed: () {},
          ),
        ));
  }

  Widget buildNavigations(
      {required BuildContext context,
      required bool hover,
      required String text,
      required Function press}) {
    Size size = MediaQuery.of(context).size;
    var style = TextStyle(
        fontFamily: 'Poppins',
        fontSize: size.width * 0.012,
        fontWeight: FontWeight.bold,
        color: Constants.BLACK_COLOR);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onHover: (check) {
            setState(() {
              hover = check;
            });
          },
          onPressed: () async {
            await press();
          },
          child: Text(
            text,
            style: GoogleFonts.roboto(textStyle: style),
          ),
        ),
        hover
            ? ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: size.height * 0.01,
                  width: size.width * 0.03,
                  color: Constants.BLACK_COLOR,
                ),
              )
            : SizedBox()
      ],
    );
  }

  selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.goNamed("home");
        break;
      case 1:
        context.goNamed("about");
        break;
      case 2:
        context.goNamed("certifications");
        break;
      case 3:
        context.goNamed("contact");
        break;
      case 4:
        // Navigator.of(context).pop(context);
        // Navigator.of(context).push(
        //   CustomPageRoute(widget: Policy()),
        // );
        break;
    }
  }
}
