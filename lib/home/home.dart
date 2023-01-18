// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/custom_route.dart';
import 'package:davidkemdirim/components/footer.dart';
import 'package:davidkemdirim/components/header.dart';
import 'package:davidkemdirim/components/main_button.dart';
import 'package:davidkemdirim/components/navigation_drawer.dart';
import 'package:davidkemdirim/components/page_wrapper.dart';
import 'package:davidkemdirim/components/responsiveness.dart';
import 'package:davidkemdirim/projects/projects._data2.dart';
import 'package:davidkemdirim/projects/projects.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ProjectDataHome object = ProjectDataHome();
  final _formKey = GlobalKey<FormState>();

  sendMessage() {}

  routePageToAbout() {
    context.goNamed("about");
  }

  @override
  void initState() {
    setState(() {
      CurrentPage = "home";
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
            color: Constants.OFF_WHITE_COLOR,
            child: Stack(children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/home2.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
              Positioned(
                top: size.height * 0.22,
                left: size.width * 0.1,
                child: SizedBox(
                  width: size.width * 0.4,
                  height: size.height * 0.43,
                  child: AspectRatio(
                    aspectRatio: size.width * 0.01 / size.height * 0.05,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Constants.HEADING1,
                              style: TextStyle(
                                  fontFamily: Constants.POPPINS,
                                  fontSize: size.width * 0.02,
                                  fontWeight: FontWeight.w200,
                                  color: Constants.BLACK_COLOR2)),
                          SizedBox(height: size.height * 0.02),
                          Text(Constants.NAME,
                              style: TextStyle(
                                  fontFamily: Constants.POPPINS,
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w500,
                                  color: Constants.BLACK_COLOR2)),
                          Text(Constants.SUBHEADING1,
                              style: TextStyle(
                                  fontFamily: Constants.POPPINS,
                                  fontSize: size.width * 0.015,
                                  fontWeight: FontWeight.w300,
                                  color: Constants.BLACK_COLOR2)),
                          SizedBox(height: size.height * 0.02),
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: Constants.SUBHEADING2,
                                  style: TextStyle(
                                      fontFamily: Constants.POPPINS,
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.w300,
                                      color: Constants.BLACK_COLOR2)),
                              TextSpan(
                                  text: Constants.SUBHEADING3,
                                  style: TextStyle(
                                      fontFamily: Constants.POPPINS,
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.BLACK_COLOR2)),
                              TextSpan(
                                  text: Constants.SUBHEADING4,
                                  style: TextStyle(
                                      fontFamily: Constants.POPPINS,
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.w300,
                                      color: Constants.BLACK_COLOR2)),
                            ]),
                          )
                        ]),
                  ),
                ),
              ),
              Positioned(
                  top: size.height * 0.65,
                  left: size.width * 0.1,
                  child: MainButton(
                    title: "Discover Now",
                    width: size.width * 0.2,
                    borderWidth: size.width * 0.1,
                    height: size.height * 0.08,
                    iconSize: size.width * 0.02,
                    fontSize: size.width * 0.02,
                    hasIcon: true,
                    buttonColor: Constants.SECONDARY_COLOR2,
                    borderColor: Constants.SECONDARY_COLOR2,
                    onPressed: () {
                      routePageToAbout();
                    },
                  )),
              Positioned(
                top: size.height * 0.18,
                left: size.width * 0.6,
                child: CircleAvatar(
                  backgroundColor: Constants.OFF_WHITE_COLOR,
                  radius: size.width * 0.15,
                  // maxRadius: size.width * 0.15,
                  backgroundImage: AssetImage("assets/images/david2.jpg"),
                ),
              ),
            ]),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.1),
                  Container(
                      width: size.width,
                      color: Constants.TRANSPARENT_COLOR,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.1),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(size.height * 0.08),
                              child: Container(
                                width: size.width * 0.35,
                                height: size.height * 0.6,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Constants.WHITE_COLOR),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/david2.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Constants.ABOUTME,
                                  style: TextStyle(
                                    fontFamily: Constants.ROBOTO,
                                    fontSize: size.width * 0.02,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                  Constants.ABOUTME_SHORT,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontSize: size.width * 0.015,
                                    fontWeight: FontWeight.w300,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.015),
                                Flex(
                                    direction: Axis.horizontal,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      MainButton(
                                        title: "Find out more",
                                        width: size.width * 0.15,
                                        borderWidth: size.width * 0.1,
                                        height: size.height * 0.05,
                                        iconSize: size.width * 0.015,
                                        fontSize: size.width * 0.015,
                                        hasIcon: true,
                                        buttonColor: Constants.SECONDARY_COLOR2,
                                        borderColor: Constants.SECONDARY_COLOR2,
                                        onPressed: () {
                                          routePageToAbout();
                                        },
                                      ),
                                    ]),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: size.height * 0.3),
                  SizedBox(
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Constants.SERVICES,
                              style: TextStyle(
                                fontFamily: Constants.ARIMA,
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.computer_rounded,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES1,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES1b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.rocket_launch,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES2b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.analytics_outlined,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES3,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES3b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.graphic_eq_rounded,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES4,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES4b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: size.height * 0.3),
                  SizedBox(
                      width: size.width,
                      // color: Constants.TRANSPARENT_COLOR,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.05,
                            vertical: size.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Constants.PROJECTS,
                              style: TextStyle(
                                fontFamily: Constants.ARIMA,
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.1),
                            SizedBox(
                              width: size.width,
                              height: size.height,
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: object.getProjectData.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            // context,
                                            CustomPageRoute(
                                                widget: Projects(
                                              index: index,
                                              imageUrl: object
                                                  .getProjectData[index]
                                                  .imageUrl,
                                              title: object
                                                  .getProjectData[index].title,
                                              subTitle: object
                                                  .getProjectData[index]
                                                  .subTitle,
                                              languageUsed: object
                                                  .getProjectData[index]
                                                  .languageUsed,
                                              description: object
                                                  .getProjectData[index]
                                                  .description,
                                            )),
                                          );
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: size.height * 0.05),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.4,
                                                width: size.width * 0.6,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          size.width * 0.01),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      object
                                                          .getProjectData[index]
                                                          .imageUrl,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              Text(
                                                object.getProjectData[index]
                                                    .title,
                                                style: TextStyle(
                                                  fontFamily: Constants.POPPINS,
                                                  fontSize: size.width * 0.02,
                                                  fontWeight: FontWeight.w500,
                                                  color: Constants.BLACK_COLOR2,
                                                ),
                                              ),
                                              Text(
                                                object.getProjectData[index]
                                                    .subTitle,
                                                style: TextStyle(
                                                  fontFamily: Constants.POPPINS,
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w400,
                                                  color: Constants.BLACK_COLOR2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                                  }),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: size.height * 0.1),
                ],
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
        ],
      ),
    );
  }

  Widget tabletScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageWrapper(
      child: Column(
        children: [
          Container(
            color: Constants.OFF_WHITE_COLOR,
            child: Stack(children: [
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/home2.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
              Positioned(
                top: size.height * 0.22,
                left: size.width * 0.1,
                child: SizedBox(
                  width: size.width * 0.4,
                  height: size.height * 0.34,
                  child: AspectRatio(
                    aspectRatio: size.width * 0.01 / size.height * 0.05,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Constants.HEADING1,
                              style: TextStyle(
                                  fontFamily: Constants.POPPINS,
                                  fontSize: size.width * 0.02,
                                  fontWeight: FontWeight.w200,
                                  color: Constants.BLACK_COLOR2)),
                          SizedBox(height: size.height * 0.02),
                          Text(Constants.NAME,
                              style: TextStyle(
                                  fontFamily: Constants.POPPINS,
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w500,
                                  color: Constants.BLACK_COLOR2)),
                          Text(Constants.SUBHEADING1,
                              style: TextStyle(
                                  fontFamily: Constants.POPPINS,
                                  fontSize: size.width * 0.015,
                                  fontWeight: FontWeight.w300,
                                  color: Constants.BLACK_COLOR2)),
                          SizedBox(height: size.height * 0.02),
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: Constants.SUBHEADING2,
                                  style: TextStyle(
                                      fontFamily: Constants.POPPINS,
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.w300,
                                      color: Constants.BLACK_COLOR2)),
                              TextSpan(
                                  text: Constants.SUBHEADING3,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.BLACK_COLOR2)),
                              TextSpan(
                                  text: Constants.SUBHEADING4,
                                  style: TextStyle(
                                      fontFamily: Constants.POPPINS,
                                      fontSize: size.width * 0.015,
                                      fontWeight: FontWeight.w300,
                                      color: Constants.BLACK_COLOR2)),
                            ]),
                          )
                        ]),
                  ),
                ),
              ),
              Positioned(
                  top: size.height * 0.55,
                  left: size.width * 0.1,
                  child: MainButton(
                    title: "Discover Now",
                    width: size.width * 0.2,
                    borderWidth: size.width * 0.1,
                    height: size.height * 0.06,
                    iconSize: size.width * 0.02,
                    fontSize: size.width * 0.02,
                    hasIcon: true,
                    buttonColor: Constants.SECONDARY_COLOR2,
                    borderColor: Constants.SECONDARY_COLOR2,
                    onPressed: () {
                      routePageToAbout();
                    },
                  )),
              Positioned(
                top: size.height * 0.15,
                left: size.width * 0.55,
                child: CircleAvatar(
                  backgroundColor: Constants.OFF_WHITE_COLOR,
                  radius: size.width * 0.15,
                  // maxRadius: size.width * 0.15,
                  backgroundImage: AssetImage("assets/images/david2.jpg"),
                ),
              ),
            ]),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.1),
                  Container(
                      width: size.width,
                      color: Constants.TRANSPARENT_COLOR,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.1),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(size.height * 0.08),
                              child: Container(
                                width: size.width * 0.4,
                                height: size.height * 0.5,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Constants.WHITE_COLOR),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/david2.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Constants.ABOUTME,
                                  style: TextStyle(
                                    fontFamily: Constants.ROBOTO,
                                    fontSize: size.width * 0.02,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                  Constants.ABOUTME_SHORT,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontSize: size.width * 0.015,
                                    fontWeight: FontWeight.w300,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.015),
                                Flex(
                                    direction: Axis.horizontal,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      MainButton(
                                        title: "Find out more",
                                        width: size.width * 0.15,
                                        borderWidth: size.width * 0.1,
                                        height: size.height * 0.05,
                                        iconSize: size.width * 0.015,
                                        fontSize: size.width * 0.015,
                                        hasIcon: true,
                                        buttonColor: Constants.SECONDARY_COLOR2,
                                        borderColor: Constants.SECONDARY_COLOR2,
                                        onPressed: () {
                                          routePageToAbout();
                                        },
                                      ),
                                    ]),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: size.height * 0.3),
                  SizedBox(
                      width: size.width,
                      // color: Constants.TRANSPARENT_COLOR,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Constants.SERVICES,
                              style: TextStyle(
                                fontFamily: Constants.ARIMA,
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.1),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.computer_rounded,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES1,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES1b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.rocket_launch,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES2b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.analytics_outlined,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES3,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES3b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(size.width * 0.05),
                                child: Column(
                                  children: [
                                    Icon(Icons.graphic_eq_rounded,
                                        size: size.width * 0.05,
                                        color: Constants.BLACK_COLOR2),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.SERVICES4,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      Constants.SERVICES4b,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.015,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: size.height * 0.3),
                  SizedBox(
                      width: size.width,
                      // color: Constants.TRANSPARENT_COLOR,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.05,
                            vertical: size.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Constants.PROJECTS,
                              style: TextStyle(
                                fontFamily: Constants.ARIMA,
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.1),
                            SizedBox(
                              width: size.width,
                              height: size.height,
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: object.getProjectData.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            CustomPageRoute(
                                                widget: Projects(
                                              index: index,
                                              imageUrl: object
                                                  .getProjectData[index]
                                                  .imageUrl,
                                              title: object
                                                  .getProjectData[index].title,
                                              subTitle: object
                                                  .getProjectData[index]
                                                  .subTitle,
                                              languageUsed: object
                                                  .getProjectData[index]
                                                  .languageUsed,
                                              description: object
                                                  .getProjectData[index]
                                                  .description,
                                            )),
                                          );
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: size.height * 0.05),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.4,
                                                width: size.width * 0.6,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          size.width * 0.01),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      object
                                                          .getProjectData[index]
                                                          .imageUrl,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              Text(
                                                object.getProjectData[index]
                                                    .title,
                                                style: TextStyle(
                                                  fontFamily: Constants.POPPINS,
                                                  fontSize: size.width * 0.02,
                                                  fontWeight: FontWeight.w500,
                                                  color: Constants.BLACK_COLOR2,
                                                ),
                                              ),
                                              Text(
                                                object.getProjectData[index]
                                                    .subTitle,
                                                style: TextStyle(
                                                  fontFamily: Constants.POPPINS,
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w400,
                                                  color: Constants.BLACK_COLOR2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                                  }),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: size.height * 0.1),
                ],
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
        ],
      ),
    );
  }

  Widget mobileScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var style1 = TextStyle(
      fontFamily: Constants.POPPINS,
      fontSize: size.width * 0.04,
      fontWeight: FontWeight.bold,
      color: Constants.BLACK_COLOR2,
    );
    var style2 = TextStyle(
        fontFamily: Constants.POPPINS,
        fontSize: size.width * 0.03,
        fontWeight: FontWeight.w600,
        color: Constants.BLACK_COLOR2);
    return PageWrapper(
      child: Column(
        children: [
          SizedBox(
            // color: Constants.OFF_WHITE_COLOR,
            child: Stack(children: [
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/home2.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
              Positioned(
                top: size.height * 0.01,
                left: size.width * 0.1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.11),
                  child: SizedBox(
                    width: size.width * 0.6,
                    height: size.height * 0.4,
                    child: AspectRatio(
                      aspectRatio: size.width * 0.01 / size.height * 0.05,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Constants.HEADING1,
                                style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontSize: size.width * 0.02,
                                    fontWeight: FontWeight.w200,
                                    color: Constants.BLACK_COLOR2)),
                            SizedBox(height: size.height * 0.02),
                            Text(Constants.NAME,
                                style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontSize: size.width * 0.07,
                                    fontWeight: FontWeight.w600,
                                    color: Constants.BLACK_COLOR2)),
                            Text(Constants.SUBHEADING1,
                                style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.w300,
                                    color: Constants.BLACK_COLOR2)),
                            SizedBox(height: size.height * 0.02),
                            RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: Constants.SUBHEADING2,
                                    style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.03,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2)),
                                TextSpan(
                                    text: Constants.SUBHEADING3,
                                    style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.03,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.BLACK_COLOR2)),
                                TextSpan(
                                    text: Constants.SUBHEADING4,
                                    style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.03,
                                        fontWeight: FontWeight.w300,
                                        color: Constants.BLACK_COLOR2)),
                              ]),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: size.height * 0.35,
                  left: size.width * 0.1,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.11),
                    child: MainButton(
                      title: "Discover Now",
                      width: size.width * 0.2,
                      borderWidth: size.width * 0.1,
                      height: size.height * 0.035,
                      iconSize: size.width * 0.02,
                      fontSize: size.width * 0.02,
                      hasIcon: true,
                      buttonColor: Constants.SECONDARY_COLOR2,
                      borderColor: Constants.SECONDARY_COLOR2,
                      onPressed: () {
                        routePageToAbout();
                      },
                    ),
                  )),
            ]),
          ),
          SizedBox(height: size.height * 0.1),
          Container(
              width: size.width,
              color: Constants.TRANSPARENT_COLOR,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(size.height * 0.04),
                      child: Container(
                        width: size.width * 0.6,
                        height: size.height * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: Constants.WHITE_COLOR),
                          image: DecorationImage(
                              image: AssetImage("assets/images/david2.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Constants.ABOUTME,
                          style: TextStyle(
                            fontFamily: Constants.ROBOTO,
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Constants.BLACK_COLOR2,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Text(
                          Constants.ABOUTME_SHORT,
                          textAlign: TextAlign.justify,
                          style: style2,
                        ),
                        SizedBox(height: size.height * 0.01),
                        Flex(
                            direction: Axis.horizontal,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              MainButton(
                                title: "Find out more",
                                width: size.width * 0.23,
                                borderWidth: size.width * 0.1,
                                height: size.height * 0.038,
                                iconSize: size.width * 0.02,
                                fontSize: size.width * 0.025,
                                hasIcon: true,
                                buttonColor: Constants.SECONDARY_COLOR2,
                                borderColor: Constants.SECONDARY_COLOR2,
                                onPressed: () {
                                  routePageToAbout();
                                },
                              ),
                            ]),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(height: size.height * 0.1),
          Container(
              width: size.width,
              color: Constants.TRANSPARENT_COLOR,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Constants.SERVICES,
                      style: TextStyle(
                        fontFamily: Constants.ARIMA,
                        fontSize: size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Constants.BLACK_COLOR2,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(size.width * 0.05),
                        child: Column(
                          children: [
                            Icon(Icons.computer_rounded,
                                size: size.width * 0.15,
                                color: Constants.BLACK_COLOR2),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              Constants.SERVICES1,
                              textAlign: TextAlign.center,
                              style: style1,
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              Constants.SERVICES1b,
                              textAlign: TextAlign.center,
                              style: style2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(size.width * 0.05),
                        child: Column(
                          children: [
                            Icon(Icons.rocket_launch,
                                size: size.width * 0.15,
                                color: Constants.BLACK_COLOR2),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              Constants.SERVICES2,
                              textAlign: TextAlign.center,
                              style: style1,
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              Constants.SERVICES2b,
                              textAlign: TextAlign.center,
                              style: style2,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(size.width * 0.05),
                        child: Column(
                          children: [
                            Icon(Icons.analytics_outlined,
                                size: size.width * 0.15,
                                color: Constants.BLACK_COLOR2),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              Constants.SERVICES3,
                              textAlign: TextAlign.center,
                              style: style1,
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              Constants.SERVICES3b,
                              textAlign: TextAlign.center,
                              style: style2,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(size.width * 0.05),
                        child: Column(
                          children: [
                            Icon(Icons.graphic_eq_rounded,
                                size: size.width * 0.15,
                                color: Constants.BLACK_COLOR2),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              Constants.SERVICES4,
                              textAlign: TextAlign.center,
                              style: style1,
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              Constants.SERVICES4b,
                              textAlign: TextAlign.center,
                              style: style2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: size.height * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Container(
                width: size.width,
                color: Constants.TRANSPARENT_COLOR,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Constants.PROJECTS,
                        style: TextStyle(
                          fontFamily: Constants.ARIMA,
                          fontSize: size.width * 0.07,
                          fontWeight: FontWeight.bold,
                          color: Constants.BLACK_COLOR2,
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      SizedBox(
                        width: size.width,
                        height: size.height,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: object.getProjectData.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CustomPageRoute(
                                          widget: Projects(
                                        index: index,
                                        imageUrl: object
                                            .getProjectData[index].imageUrl,
                                        title:
                                            object.getProjectData[index].title,
                                        subTitle: object
                                            .getProjectData[index].subTitle,
                                        languageUsed: object
                                            .getProjectData[index].languageUsed,
                                        description: object
                                            .getProjectData[index].description,
                                      )),
                                    );
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.05),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.2,
                                          width: size.width * 0.6,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                size.width * 0.01),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                object.getProjectData[index]
                                                    .imageUrl,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: size.height * 0.01),
                                        Text(
                                          object.getProjectData[index].title,
                                          style: TextStyle(
                                            fontFamily: Constants.POPPINS,
                                            fontSize: size.width * 0.04,
                                            fontWeight: FontWeight.bold,
                                            color: Constants.BLACK_COLOR2,
                                          ),
                                        ),
                                        Text(
                                          object.getProjectData[index].subTitle,
                                          style: TextStyle(
                                            fontFamily: Constants.POPPINS,
                                            fontSize: size.width * 0.02,
                                            fontWeight: FontWeight.w600,
                                            color: Constants.BLACK_COLOR2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ));
                            }),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(height: size.height * 0.05),
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
      ),
    );
  }
}
