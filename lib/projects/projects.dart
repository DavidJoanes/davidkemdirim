// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/footer.dart';
import 'package:davidkemdirim/components/header.dart';
import 'package:davidkemdirim/components/navigation_drawer.dart';
import 'package:davidkemdirim/components/page_wrapper.dart';
import 'package:davidkemdirim/components/responsiveness.dart';
import 'package:davidkemdirim/components/title_case.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Projects extends StatefulWidget {
  const Projects(
      {Key? key,
      required this.index,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.languageUsed,
      required this.description})
      : super(key: key);
  final int index;
  final String imageUrl;
  final String title;
  final String subTitle;
  final String languageUsed;
  final String description;

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final _formKey = GlobalKey<FormState>();

  sendMessage() {}

  @override
  void initState() {
    setState(() {
      CurrentPage = "projects";
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                buildFrontDesk(context),
                Header(headerColor: Constants.WHITE_COLOR),
              ],
            )
          ],
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
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: size.width,
                  color: Constants.TRANSPARENT_COLOR,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: size.height * 0.1),
                            Text(
                              "About ${widget.title}",
                              style: TextStyle(
                                fontFamily: Constants.POPPINS,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.03,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            Text(
                              Constants.PROJECTS_DESCRIPTION[widget.index],
                              style: TextStyle(
                                fontFamily: Constants.POPPINS,
                                fontWeight: FontWeight.w400,
                                fontSize: size.width * 0.01,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Constants.ABOUT_PROJECTS[widget.index],
                                  style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.02,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  Constants.PROJECTS_DESCRIPTION2[widget.index],
                                  style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.width * 0.01,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Platform",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.015,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      widget.subTitle,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.width * 0.01,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.02),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Technology",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.015,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      widget.languageUsed,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.width * 0.01,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.015),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Author",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.015,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.NAME.toTitleCase(),
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.width * 0.01,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Link",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.015,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    GestureDetector(
                                        child: Text(
                                          "link",
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: Constants.POPPINS,
                                            fontWeight: FontWeight.w400,
                                            fontSize: size.width * 0.01,
                                            color: Constants.BLACK_COLOR2,
                                          ),
                                        ),
                                        onTap: () async {
                                          final url =
                                              Constants.PROJECTS_GITHUBLINK[
                                                  widget.index];
                                          if (await canLaunchUrl(
                                              Uri.parse(url))) {
                                            await launchUrlString(
                                              url,
                                            );
                                          }
                                        }),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.08),
                          ],
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 500),
                            height: size.height * 0.5,
                          ),
                          items: test_list[widget.index].map((item) {
                            return GridTile(
                              child: Image.asset(item, fit: BoxFit.contain),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.15)
              ],
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
      ),
    );
  }

  Widget tabletScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageWrapper(
      child: Column(
        children: [
          Container(
            width: size.width,
            color: Constants.TRANSPARENT_COLOR,
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: size.width,
                  color: Constants.TRANSPARENT_COLOR,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: size.height * 0.1),
                            Text(
                              "About ${widget.title}",
                              style: TextStyle(
                                fontFamily: Constants.POPPINS,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.04,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            Text(
                              Constants.PROJECTS_DESCRIPTION[widget.index],
                              style: TextStyle(
                                fontFamily: Constants.POPPINS,
                                fontWeight: FontWeight.w400,
                                fontSize: size.width * 0.02,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Constants.ABOUT_PROJECTS[widget.index],
                                  style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.03,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  Constants.PROJECTS_DESCRIPTION2[widget.index],
                                  style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.width * 0.02,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Platform",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.02,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      widget.subTitle,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.width * 0.015,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.02),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Technology",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.02,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      widget.languageUsed,
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.width * 0.015,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.015),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Author",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.02,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.NAME.toTitleCase(),
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.width * 0.015,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Link",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.02,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    GestureDetector(
                                        child: Text(
                                          "link",
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: Constants.POPPINS,
                                            fontWeight: FontWeight.w400,
                                            fontSize: size.width * 0.015,
                                            color: Constants.BLACK_COLOR2,
                                          ),
                                        ),
                                        onTap: () async {
                                          final url =
                                              Constants.PROJECTS_GITHUBLINK[
                                                  widget.index];
                                          if (await canLaunchUrl(
                                              Uri.parse(url))) {
                                            await launchUrlString(
                                              url,
                                            );
                                          }
                                        }),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.08),
                          ],
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 500),
                            height: size.height * 0.5,
                          ),
                          items: test_list[widget.index].map((item) {
                            return GridTile(
                              child: Image.asset(item, fit: BoxFit.contain),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.1)
              ],
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
      ),
    );
  }

  Widget mobileScreen(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var style2 = TextStyle(
        fontFamily: Constants.POPPINS,
        fontSize: size.width * 0.025,
        fontWeight: FontWeight.w600,
        color: Constants.BLACK_COLOR2);
    return PageWrapper(
      child: Column(
        children: [
          Container(
            width: size.width,
            color: Constants.TRANSPARENT_COLOR,
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                Container(
                  width: size.width,
                  height: size.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: size.width,
                  color: Constants.TRANSPARENT_COLOR,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: size.height * 0.05),
                            Text(
                              "About ${widget.title}",
                              style: TextStyle(
                                fontFamily: Constants.POPPINS,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.05,
                                color: Constants.BLACK_COLOR2,
                              ),
                            ),
                            SizedBox(height: size.height * 0.03),
                            Text(
                              Constants.PROJECTS_DESCRIPTION[widget.index],
                              style: style2,
                            ),
                            SizedBox(height: size.height * 0.01),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Constants.ABOUT_PROJECTS[widget.index],
                                  style: TextStyle(
                                    fontFamily: Constants.POPPINS,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.03,
                                    color: Constants.BLACK_COLOR2,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.01),
                                Text(
                                  Constants.PROJECTS_DESCRIPTION2[widget.index],
                                  style: style2,
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Platform",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.03,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      widget.subTitle,
                                      style: style2,
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.015),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Technology",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.03,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      widget.languageUsed,
                                      style: style2,
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.015),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Author",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.03,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Text(
                                      Constants.NAME.toTitleCase(),
                                      style: style2,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Link",
                                      style: TextStyle(
                                        fontFamily: Constants.POPPINS,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.03,
                                        color: Constants.BLACK_COLOR2,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    GestureDetector(
                                        child: Text(
                                          "link",
                                          style: style2,
                                        ),
                                        onTap: () async {
                                          final url =
                                              Constants.PROJECTS_GITHUBLINK[
                                                  widget.index];
                                          if (await canLaunchUrl(
                                              Uri.parse(url))) {
                                            await launchUrlString(
                                              url,
                                            );
                                          }
                                        }),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.04),
                            CarouselSlider(
                              options: CarouselOptions(
                                aspectRatio:
                                    size.width * 0.5 / size.height * 0.2,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 2),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 1000),
                                height: size.height * 0.5,
                              ),
                              items: test_list[widget.index].map((item) {
                                return GridTile(
                                  child: Image.asset(item, fit: BoxFit.contain),
                                );
                              }).toList(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.1),
              ],
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
      ),
    );
  }
}
