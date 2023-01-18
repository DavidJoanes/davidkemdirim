// ignore_for_file: prefer_const_constructors

import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/footer.dart';
import 'package:davidkemdirim/components/header.dart';
import 'package:davidkemdirim/components/navigation_drawer.dart';
import 'package:davidkemdirim/components/page_wrapper.dart';
import 'package:davidkemdirim/components/responsiveness.dart';
import 'package:flutter/material.dart';

class Certifications extends StatefulWidget {
  const Certifications({Key? key}) : super(key: key);

  @override
  State<Certifications> createState() => _CertificationsState();
}

class _CertificationsState extends State<Certifications> {
  final _formKey = GlobalKey<FormState>();

  sendMessage() {}

  @override
  void initState() {
    setState(() {
      CurrentPage = "certifications";
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
    return PageWrapper(
        child: Column(
      children: [
        Container(
          width: size.width,
          color: Constants.TRANSPARENT_COLOR,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                Stack(children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(color: Constants.WHITE_COLOR),
                      image: DecorationImage(
                          image: AssetImage("assets/images/certifications.jpg"),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.37,
                    left: size.width / 5,
                    child: Text(
                      Constants.CERTIFICATIONS_HEADING,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Constants.ROBOTO,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05,
                        color: Constants.SECONDARY_COLOR2,
                      ),
                    ),
                  ),
                ]),
                SizedBox(height: size.height * 0.1),
                Icon(Icons.keyboard_double_arrow_down_rounded,
                    color: Constants.GREY_COLOR, size: size.width * 0.1),
                SizedBox(height: size.height * 0.1),
                for (var data in Constants.CERTIFICATES)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    child: Container(
                      width: size.width,
                      height: size.height * 0.8,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Constants.SECONDARY_COLOR2,
                            width: size.width * 0.001),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/certificates/$data"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.1)
              ],
            ),
          ),
        ),
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
      ],
    ));
  }

  Widget tabletScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageWrapper(
        child: Column(
      children: [
        Container(
          width: size.width,
          color: Constants.TRANSPARENT_COLOR,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                Stack(children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(color: Constants.WHITE_COLOR),
                      image: DecorationImage(
                          image: AssetImage("assets/images/certifications.jpg"),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.37,
                    left: size.width / 5,
                    child: Text(
                      Constants.CERTIFICATIONS_HEADING,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Constants.ROBOTO,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05,
                        color: Constants.SECONDARY_COLOR2,
                      ),
                    ),
                  ),
                ]),
                Icon(Icons.keyboard_double_arrow_down_rounded,
                    color: Constants.GREY_COLOR, size: size.width * 0.15),
                SizedBox(height: size.height * 0.1),
                for (var data in Constants.CERTIFICATES)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    child: Container(
                      width: size.width,
                      height: size.height * 0.6,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Constants.SECONDARY_COLOR2,
                            width: size.width * 0.001),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/certificates/$data"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.1)
              ],
            ),
          ),
        ),
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
      ],
    ));
  }

  Widget mobileScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageWrapper(
        child: Column(
      children: [
        Container(
          width: size.width,
          color: Constants.TRANSPARENT_COLOR,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.1),
                  child: Stack(children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Constants.WHITE_COLOR),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/certifications.jpg"),
                            fit: BoxFit.contain),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.13,
                      left: size.width / 6.3,
                      child: Text(
                        Constants.CERTIFICATIONS_HEADING,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.ROBOTO,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05,
                          color: Constants.SECONDARY_COLOR2,
                        ),
                      ),
                    ),
                  ]),
                ),
                Icon(Icons.keyboard_double_arrow_down_rounded,
                    color: Constants.GREY_COLOR, size: size.width * 0.2),
                SizedBox(height: size.height * 0.1),
                for (var data in Constants.CERTIFICATES)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    child: Container(
                      width: size.width,
                      height: size.height * 0.28,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Constants.SECONDARY_COLOR2,
                            width: size.width * 0.001),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/certificates/$data"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05)
              ],
            ),
          ),
        ),
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
      ],
    ));
  }
}
