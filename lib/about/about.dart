// ignore_for_file: prefer_const_constructors

import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/footer.dart';
import 'package:davidkemdirim/components/header.dart';
import 'package:davidkemdirim/components/navigation_drawer.dart';
import 'package:davidkemdirim/components/page_wrapper.dart';
import 'package:davidkemdirim/components/responsiveness.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final _formKey = GlobalKey<FormState>();

  sendMessage() {}

  @override
  void initState() {
    setState(() {
      CurrentPage = "about";
    });
    super.initState();
  }

  @override
  void dispose() {
    setState(() {
      CurrentPage = "";
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  buildFrontDesk(context),
                  Header(headerColor: Constants.TRANSPARENT_COLOR),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFrontDesk(BuildContext context) {
    return Responsive(
        desktopScreen: desktopScreen(context),
        tabletScreen: tabletScreen(context),
        mobileScreen: mobileScreen(context));
  }

  Widget desktopScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var style = TextStyle(
      fontFamily: Constants.POPPINS,
      fontWeight: FontWeight.w300,
      fontSize: size.width * 0.01,
      color: Constants.BLACK_COLOR,
    );
    return PageWrapper(
        child: Column(children: [
      Container(
          width: size.width,
          color: Constants.TRANSPARENT_COLOR,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      child: AspectRatio(
                        aspectRatio: size.width * 0.01 / size.height * 0.1,
                        child: Text(
                          Constants.ABOUTME_BRIEF,
                          textAlign: TextAlign.justify,
                          maxLines: 5,
                          style: TextStyle(
                            fontFamily: Constants.POPPINS,
                            fontSize: size.width * 0.02,
                            fontWeight: FontWeight.w300,
                            color: Constants.BLACK_COLOR2,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.04),
                      child: Container(
                        width: size.width * 0.3,
                        height: size.height * 0.6,
                        decoration: BoxDecoration(
                          border: Border.all(color: Constants.WHITE_COLOR),
                          image: DecorationImage(
                              image: AssetImage("assets/images/david3.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.push_pin_rounded,
                        color: Constants.BLACK_COLOR2,
                        size: size.width * 0.015),
                    Text(
                      "/ STORY",
                      style: TextStyle(
                        fontFamily: Constants.POPPINS,
                        fontWeight: FontWeight.w300,
                        fontSize: size.width * 0.015,
                        color: Constants.GREY_COLOR,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Constants.ABOUTME_SECTION1,
                      style: TextStyle(
                        fontFamily: Constants.POPPINS,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.017,
                        color: Constants.BLACK_COLOR,
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Text(
                      Constants.ABOUTME_SECTION1_TEXT,
                      maxLines: Constants.ABOUTME_SECTION1_TEXT.length,
                      style: style,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.push_pin_rounded,
                        color: Constants.BLACK_COLOR2,
                        size: size.width * 0.015),
                    Text(
                      "/ TECHNOLOGY",
                      style: TextStyle(
                        fontFamily: Constants.POPPINS,
                        fontWeight: FontWeight.w300,
                        fontSize: size.width * 0.015,
                        color: Constants.GREY_COLOR,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Constants.ABOUTME_SECTION2,
                      style: TextStyle(
                        fontFamily: Constants.POPPINS,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.017,
                        color: Constants.BLACK_COLOR,
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Text(
                      Constants.ABOUTME_SECTION2_TEXT,
                      maxLines: Constants.ABOUTME_SECTION1_TEXT.length,
                      style: style,
                    ),
                    SizedBox(height: size.height * 0.02),
                    Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        for (var item in Constants.ABOUTME_SECTION2_TECHNOLOGIES)
                        Row(
                          children: [
                            Icon(Icons.circle,
                                size: size.width * 0.015,
                                color: Constants.BLACK_COLOR2),
                            SizedBox(width: size.width * 0.02),
                            Text(
                              item,
                              maxLines: Constants.ABOUTME_SECTION1_TEXT.length,
                              style: style,
                            ),
                          ],
                        ),
                        ],
                    ),
                    SizedBox(height: size.height * 0.06),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: Constants.POPPINS,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.017,
                        color: Constants.BLACK_COLOR,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      Constants.EMAIL,
                      style: style,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.15),
                Text(
                  '"${Constants.ABOUTME_SECTION2_QUOTE}"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: Constants.POPPINS,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.017,
                    color: Constants.BLACK_COLOR,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      Constants.ABOUTME_SECTION2_QUOTE_AUTHOR,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Constants.POPPINS,
                        fontWeight: FontWeight.w300,
                        fontSize: size.width * 0.01,
                        color: Constants.GREY_COLOR,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.1),
              ],
            ),
          )),
      Footer(
        footerWidth: size.width,
        mainPaddingHorizontal: size.width * 0.05,
        mainPaddingVertical: size.height * 0.04,
        formKey: _formKey,
        footerHeadingFontSize: size.width * 0.04,
        emailWidth: size.width * 0.5,
        emailHorizontalGap: size.width * 0.01,
        emailVerticalGap: size.height * 0.003,
        emailRadius: size.width * 0.01,
        messageWidth: size.width * 0.5,
        messageHorizontalGap: size.width * 0.01,
        messageVerticalGap: size.height * 0.01,
        messageRadius: size.width * 0.01,
        buttonSMWidth: size.width * 0.17,
        buttonSMBorderWidth: size.width * 0.1,
        buttonSMHeight: size.height * 0.06,
        buttonSMIconSize: size.width * 0.015,
        buttonSMFontSize: size.width * 0.02,
        buttonSMHasIcon: false,
        circleRadius: size.width * 0.04,
        footerText1Size: size.width * 0.04,
        footerText2Size: size.width * 0.01,
        buttonCMWidth: size.width * 0.17,
        buttonCMBorderWidth: size.width * 0.1,
        buttonCMHeight: size.height * 0.06,
        buttonCMIconSize: size.width * 0.017,
        buttonCMFontSize: size.width * 0.017,
        buttonCMHasIcon: true,
        socialIconsSize: size.width * 0.01,
        sendMessage: () async {
          await sendMessage();
        },
      ),
    ]));
  }

  Widget tabletScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var style = TextStyle(
      fontFamily: Constants.POPPINS,
      fontWeight: FontWeight.w300,
      fontSize: size.width * 0.015,
      color: Constants.BLACK_COLOR,
    );
    return PageWrapper(
      child: Column(children: [
        Container(
            width: size.width,
            color: Constants.TRANSPARENT_COLOR,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        height: size.height * 0.2,
                        child: AspectRatio(
                          aspectRatio: size.width * 0.01 / size.height * 0.1,
                          child: Text(
                            Constants.ABOUTME_BRIEF,
                            textAlign: TextAlign.justify,
                            maxLines: 5,
                            style: TextStyle(
                              fontFamily: Constants.ARIMA,
                              fontWeight: FontWeight.w300,
                              fontSize: size.width * 0.017,
                              color: Constants.BLACK_COLOR,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * 0.04),
                        child: Container(
                          width: size.width * 0.3,
                          height: size.height * 0.6,
                          decoration: BoxDecoration(
                            border: Border.all(color: Constants.WHITE_COLOR),
                            image: DecorationImage(
                                image: AssetImage("assets/images/david3.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.push_pin_rounded,
                          color: Constants.BLACK_COLOR2,
                          size: size.width * 0.015),
                      Text(
                        "/ STORY",
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.w300,
                          fontSize: size.width * 0.015,
                          color: Constants.GREY_COLOR,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Constants.ABOUTME_SECTION1,
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.02,
                          color: Constants.BLACK_COLOR,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Text(
                        Constants.ABOUTME_SECTION1_TEXT,
                        maxLines: Constants.ABOUTME_SECTION1_TEXT.length,
                        style: style,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.push_pin_rounded,
                          color: Constants.BLACK_COLOR2,
                          size: size.width * 0.015),
                      Text(
                        "/ TECHNOLOGY",
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.w300,
                          fontSize: size.width * 0.015,
                          color: Constants.GREY_COLOR,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Constants.ABOUTME_SECTION2,
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.02,
                          color: Constants.BLACK_COLOR,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Text(
                        Constants.ABOUTME_SECTION2_TEXT,
                        maxLines: Constants.ABOUTME_SECTION1_TEXT.length,
                        style: style,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Wrap(
                        direction: Axis.vertical,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          for (var item in Constants.ABOUTME_SECTION2_TECHNOLOGIES)
                          Row(
                            children: [
                              Icon(Icons.circle,
                                  size: size.width * 0.015,
                                  color: Constants.BLACK_COLOR2),
                              SizedBox(width: size.width * 0.02),
                              Text(
                                item,
                                maxLines:
                                    Constants.ABOUTME_SECTION1_TEXT.length,
                                style: style,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.06),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.017,
                          color: Constants.BLACK_COLOR,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        Constants.EMAIL,
                        style: style,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.15),
                  Text(
                    '"${Constants.ABOUTME_SECTION2_QUOTE}"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Constants.POPPINS,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.017,
                      color: Constants.BLACK_COLOR,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        Constants.ABOUTME_SECTION2_QUOTE_AUTHOR,
                        textAlign: TextAlign.center,
                        style: style,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.1),
                ],
              ),
            )),
        Footer(
          footerWidth: size.width,
          mainPaddingHorizontal: size.width * 0.05,
          mainPaddingVertical: size.height * 0.04,
          formKey: _formKey,
          footerHeadingFontSize: size.width * 0.05,
          emailWidth: size.width * 0.5,
          emailHorizontalGap: size.width * 0.01,
          emailVerticalGap: size.height * 0.003,
          emailRadius: size.width * 0.01,
          messageWidth: size.width * 0.5,
          messageHorizontalGap: size.width * 0.01,
          messageVerticalGap: size.height * 0.01,
          messageRadius: size.width * 0.01,
          buttonSMWidth: size.width * 0.17,
          buttonSMBorderWidth: size.width * 0.1,
          buttonSMHeight: size.height * 0.06,
          buttonSMIconSize: size.width * 0.015,
          buttonSMFontSize: size.width * 0.02,
          buttonSMHasIcon: false,
          circleRadius: size.width * 0.05,
          footerText1Size: size.width * 0.05,
          footerText2Size: size.width * 0.02,
          buttonCMWidth: size.width * 0.17,
          buttonCMBorderWidth: size.width * 0.1,
          buttonCMHeight: size.height * 0.06,
          buttonCMIconSize: size.width * 0.017,
          buttonCMFontSize: size.width * 0.017,
          buttonCMHasIcon: true,
          socialIconsSize: size.width * 0.02,
          sendMessage: () async {
            await sendMessage();
          },
        ),
      ]),
    );
  }

  Widget mobileScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var style = TextStyle(
      fontFamily: Constants.POPPINS,
      fontWeight: FontWeight.w600,
      fontSize: size.width * 0.023,
      color: Constants.BLACK_COLOR,
    );
    return PageWrapper(
      child: Column(children: [
        Container(
            width: size.width,
            color: Constants.TRANSPARENT_COLOR,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.15),
                  Text(
                    Constants.ABOUTME_BRIEF,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: Constants.ARIMA,
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.022,
                      color: Constants.BLACK_COLOR,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
                    child: Container(
                      width: size.width * 0.6,
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(color: Constants.WHITE_COLOR),
                        image: DecorationImage(
                            image: AssetImage("assets/images/david3.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.push_pin_rounded,
                          color: Constants.BLACK_COLOR2,
                          size: size.width * 0.025),
                      Text(
                        "/ STORY",
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.w300,
                          fontSize: size.width * 0.025,
                          color: Constants.GREY_COLOR,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Constants.ABOUTME_SECTION1,
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.04,
                          color: Constants.BLACK_COLOR,
                        ),
                      ),
                      SizedBox(height: size.height * 0.015),
                      Text(
                        Constants.ABOUTME_SECTION1_TEXT,
                        maxLines: Constants.ABOUTME_SECTION1_TEXT.length,
                        style: style,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.push_pin_rounded,
                          color: Constants.BLACK_COLOR2,
                          size: size.width * 0.025),
                      Text(
                        "/ TECHNOLOGY",
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.w300,
                          fontSize: size.width * 0.025,
                          color: Constants.GREY_COLOR,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Constants.ABOUTME_SECTION2,
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.04,
                          color: Constants.BLACK_COLOR,
                        ),
                      ),
                      SizedBox(height: size.height * 0.015),
                      Text(
                        Constants.ABOUTME_SECTION2_TEXT,
                        maxLines: Constants.ABOUTME_SECTION1_TEXT.length,
                        style: style,
                      ),
                      SizedBox(height: size.height * 0.01),
                      Wrap(
                        direction: Axis.vertical,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                              for (var item in Constants.ABOUTME_SECTION2_TECHNOLOGIES)
                          Row(
                            children: [
                              Icon(Icons.circle,
                                  size: size.width * 0.025,
                                  color: Constants.BLACK_COLOR2),
                              SizedBox(width: size.width * 0.02),
                              Text(
                                item,
                                maxLines:
                                    Constants.ABOUTME_SECTION1_TEXT.length,
                                style: style,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.04),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.04,
                          color: Constants.BLACK_COLOR,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        Constants.EMAIL,
                        style: style,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.07),
                  Text(
                    '"${Constants.ABOUTME_SECTION2_QUOTE}"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Constants.POPPINS,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.025,
                      color: Constants.BLACK_COLOR,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        Constants.ABOUTME_SECTION2_QUOTE_AUTHOR,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.POPPINS,
                          fontWeight: FontWeight.w500,
                          fontSize: size.width * 0.02,
                          color: Constants.BLACK_COLOR,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05)
                ],
              ),
            )),
        Footer(
          footerWidth: size.width,
          mainPaddingHorizontal: size.width * 0.03,
          mainPaddingVertical: size.height * 0.04,
          formKey: _formKey,
          footerHeadingFontSize: size.width * 0.05,
          emailWidth: size.width * 0.8,
          emailHorizontalGap: size.width * 0.02,
          emailVerticalGap: size.height * 0.003,
          emailRadius: size.width * 0.01,
          messageWidth: size.width * 0.8,
          messageHorizontalGap: size.width * 0.02,
          messageVerticalGap: size.height * 0.01,
          messageRadius: size.width * 0.01,
          buttonSMWidth: size.width * 0.3,
          buttonSMBorderWidth: size.width * 0.15,
          buttonSMHeight: size.height * 0.05,
          buttonSMIconSize: size.width * 0.03,
          buttonSMFontSize: size.width * 0.035,
          buttonSMHasIcon: false,
          circleRadius: size.width * 0.05,
          footerText1Size: size.width * 0.05,
          footerText2Size: size.width * 0.02,
          buttonCMWidth: size.width * 0.2,
          buttonCMBorderWidth: size.width * 0.15,
          buttonCMHeight: size.height * 0.04,
          buttonCMIconSize: size.width * 0.02,
          buttonCMFontSize: size.width * 0.02,
          buttonCMHasIcon: true,
          socialIconsSize: size.width * 0.03,
          sendMessage: () async {
            await sendMessage();
          },
        ),
      ]),
    );
  }
}
