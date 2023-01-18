// ignore_for_file: prefer_const_declarations, prefer_const_constructors, unused_catch_clause

import 'dart:convert';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:davidkemdirim/about/about.dart';
import 'package:davidkemdirim/certification/cetification.dart';
import 'package:davidkemdirim/components/custom_route.dart';
import 'package:davidkemdirim/components/button.dart';
import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/footer_brief.dart';
import 'package:davidkemdirim/components/header.dart';
import 'package:davidkemdirim/components/navigation_drawer.dart';
import 'package:davidkemdirim/components/page_wrapper.dart';
import 'package:davidkemdirim/components/responsiveness.dart';
import 'package:davidkemdirim/components/text_field.dart';
import 'package:davidkemdirim/home/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void initState() {
    setState(() {
      CurrentPage = "contact";
    });
    super.initState();
  }

  @override
  void dispose() {
    setState(() {
      CurrentPage = "";
    });
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
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
                  SizedBox(height: size.height * 0.3),
                  Icon(Icons.phone_in_talk_rounded,
                      size: size.width * 0.1,
                      color: Constants.SECONDARY_COLOR2),
                  SizedBox(height: size.height * 0.1),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Get in touch.",
                          style: TextStyle(
                            fontFamily: Constants.POPPINS,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.03,
                            color: Constants.BLACK_COLOR2,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Text(Constants.CONTACT_TEXT,
                            style: TextStyle(
                                fontFamily: Constants.POPPINS,
                                fontSize: size.width * 0.02,
                                fontWeight: FontWeight.w300,
                                color: Constants.BLACK_COLOR2)),
                      ]),
                  SizedBox(height: size.height * 0.15),
                  Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      direction: Axis.horizontal,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.github,
                                  color: Constants.BLACK_COLOR2,
                                  size: size.width * 0.02),
                              SizedBox(width: size.width * 0.02),
                              InkWell(
                                hoverColor: Constants.WHITE_COLOR,
                                child: Text("Github",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w400,
                                        color: Constants.BLACK_COLOR2)),
                                onTap: () async {
                                  final url = Constants.SOCIAL_MEDIA_PAGES[0];
                                  if (await canLaunchUrl(Uri.parse(url))) {
                                    await launchUrlString(
                                      url,
                                    );
                                  }
                                },
                              ),
                            ]),
                        SizedBox(height: size.height * 0.03),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.linkedin,
                                  color: Constants.LINKEDIN_LOGO_COLOR,
                                  size: size.width * 0.02),
                              SizedBox(width: size.width * 0.02),
                              InkWell(
                                hoverColor: Constants.WHITE_COLOR,
                                child: Text("LinkedIn",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w400,
                                        color: Constants.BLACK_COLOR2)),
                                onTap: () async {
                                  final url = Constants.SOCIAL_MEDIA_PAGES[1];
                                  if (await canLaunchUrl(Uri.parse(url))) {
                                    await launchUrlString(
                                      url,
                                    );
                                  }
                                },
                              ),
                            ]),
                        SizedBox(height: size.height * 0.03),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.twitter,
                                  color: Constants.TWITTER_LOGO_COLOR,
                                  size: size.width * 0.02),
                              SizedBox(width: size.width * 0.02),
                              InkWell(
                                hoverColor: Constants.WHITE_COLOR,
                                child: Text("Twitter",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w400,
                                        color: Constants.BLACK_COLOR2)),
                                onTap: () async {
                                  final url = Constants.SOCIAL_MEDIA_PAGES[2];
                                  if (await canLaunchUrl(Uri.parse(url))) {
                                    await launchUrlString(
                                      url,
                                    );
                                  }
                                },
                              ),
                            ]),
                      ]),
                  SizedBox(height: size.height * 0.15),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RoundedInputFieldMain3(
                          controller: nameController,
                          icon: Icons.person,
                          iconColor: Constants.SECONDARY_COLOR2,
                          textColor: Constants.BLACK_COLOR2,
                          maxLines: 1,
                          mainText: "",
                          labelText: "Full name",
                          onChanged: (value) {
                            value = nameController.text;
                          },
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedInputFieldEmail(
                            controller: emailController,
                            iconColor: Constants.SECONDARY_COLOR2,
                            textColor: Constants.BLACK_COLOR2,
                            hintText: "Email address"),
                        SizedBox(height: size.height * 0.02),
                        RoundedInputFieldMain3(
                          controller: messageController,
                          icon: Icons.message,
                          iconColor: Constants.SECONDARY_COLOR2,
                          textColor: Constants.BLACK_COLOR2,
                          maxLines: 5,
                          mainText: "",
                          labelText: "Message",
                          onChanged: (value) {
                            value = messageController.text;
                          },
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedButtonGeneral(
                          text1: "SEND MESSAGE",
                          text2: "Sending..",
                          width: size.width * 0.2,
                          height: size.height * 0.03,
                          fontSize: size.width * 0.015,
                          color: Constants.SECONDARY_COLOR2,
                          isLoading: false,
                          update: () async {
                            final form = _formKey.currentState!;
                            if (form.validate()) {
                              await sendMessage();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.1)
                ],
              ),
            ),
          ),
          FooterBrief(
            footerHeight: size.height * 0.45,
            footerWidth: size.width,
            mainPaddingHorizontal: size.width * 0.05,
            mainPaddingVertical: size.height * 0.04,
            footerHeadingFontSize: size.width * 0.04,
            circleRadius: size.width * 0.04,
            footerText1Size: size.width * 0.04,
            footerText2Size: size.width * 0.01,
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.2),
                  Icon(Icons.phone_in_talk_rounded,
                      size: size.width * 0.1,
                      color: Constants.SECONDARY_COLOR2),
                  SizedBox(height: size.height * 0.1),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Get in touch.",
                          style: TextStyle(
                            fontFamily: Constants.POPPINS,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.05,
                            color: Constants.BLACK_COLOR2,
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Text(Constants.CONTACT_TEXT,
                            style: TextStyle(
                                fontFamily: Constants.POPPINS,
                                fontSize: size.width * 0.02,
                                fontWeight: FontWeight.w300,
                                color: Constants.BLACK_COLOR2)),
                      ]),
                  SizedBox(height: size.height * 0.1),
                  Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      direction: Axis.horizontal,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.github,
                                  color: Constants.BLACK_COLOR2,
                                  size: size.width * 0.02),
                              SizedBox(width: size.width * 0.01),
                              InkWell(
                                hoverColor: Constants.WHITE_COLOR,
                                child: Text("Github",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w400,
                                        color: Constants.BLACK_COLOR2)),
                                onTap: () async {
                                  final url = Constants.SOCIAL_MEDIA_PAGES[0];
                                  if (await canLaunchUrl(Uri.parse(url))) {
                                    await launchUrlString(
                                      url,
                                    );
                                  }
                                },
                              ),
                            ]),
                        SizedBox(height: size.height * 0.03),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.linkedin,
                                  color: Constants.LINKEDIN_LOGO_COLOR,
                                  size: size.width * 0.02),
                              SizedBox(width: size.width * 0.01),
                              InkWell(
                                hoverColor: Constants.WHITE_COLOR,
                                child: Text("LinkedIn",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w400,
                                        color: Constants.BLACK_COLOR2)),
                                onTap: () async {
                                  final url = Constants.SOCIAL_MEDIA_PAGES[1];
                                  if (await canLaunchUrl(Uri.parse(url))) {
                                    await launchUrlString(
                                      url,
                                    );
                                  }
                                },
                              ),
                            ]),
                        SizedBox(height: size.height * 0.03),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.twitter,
                                  color: Constants.TWITTER_LOGO_COLOR,
                                  size: size.width * 0.02),
                              SizedBox(width: size.width * 0.01),
                              InkWell(
                                hoverColor: Constants.WHITE_COLOR,
                                child: Text("Twitter",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: Constants.POPPINS,
                                        fontSize: size.width * 0.02,
                                        fontWeight: FontWeight.w400,
                                        color: Constants.BLACK_COLOR2)),
                                onTap: () async {
                                  final url = Constants.SOCIAL_MEDIA_PAGES[2];
                                  if (await canLaunchUrl(Uri.parse(url))) {
                                    await launchUrlString(
                                      url,
                                    );
                                  }
                                },
                              ),
                            ]),
                      ]),
                  SizedBox(height: size.height * 0.1),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RoundedInputFieldMain3(
                          controller: nameController,
                          icon: Icons.person,
                          iconColor: Constants.SECONDARY_COLOR2,
                          textColor: Constants.BLACK_COLOR2,
                          maxLines: 1,
                          mainText: "",
                          labelText: "Full name",
                          onChanged: (value) {
                            value = nameController.text;
                          },
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedInputFieldEmail(
                            controller: emailController,
                            iconColor: Constants.SECONDARY_COLOR2,
                            textColor: Constants.BLACK_COLOR2,
                            hintText: "Email address"),
                        SizedBox(height: size.height * 0.02),
                        RoundedInputFieldMain3(
                          controller: messageController,
                          icon: Icons.message,
                          iconColor: Constants.SECONDARY_COLOR2,
                          textColor: Constants.BLACK_COLOR2,
                          maxLines: 5,
                          mainText: "",
                          labelText: "Message",
                          onChanged: (value) {
                            value = messageController.text;
                          },
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedButtonGeneral(
                          text1: "SEND MESSAGE",
                          text2: "Sending..",
                          width: size.width * 0.3,
                          height: size.height * 0.03,
                          fontSize: size.width * 0.02,
                          color: Constants.SECONDARY_COLOR2,
                          isLoading: false,
                          update: () async {
                            final form = _formKey.currentState!;
                            if (form.validate()) {
                              await sendMessage();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.1)
                ],
              ),
            ),
          ),
          FooterBrief(
            footerHeight: size.height * 0.4,
            footerWidth: size.width,
            mainPaddingHorizontal: size.width * 0.04,
            mainPaddingVertical: size.height * 0.05,
            footerHeadingFontSize: size.width * 0.05,
            circleRadius: size.width * 0.05,
            footerText1Size: size.width * 0.05,
            footerText2Size: size.width * 0.02,
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
        fontWeight: FontWeight.w600,
        color: Constants.BLACK_COLOR2);
    var style2 = TextStyle(
        decoration: TextDecoration.underline,
        fontFamily: Constants.POPPINS,
        fontSize: size.width * 0.04,
        fontWeight: FontWeight.w600,
        color: Constants.BLACK_COLOR2);
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
                  SizedBox(height: size.height * 0.15),
                  Icon(Icons.phone_in_talk_rounded,
                      size: size.width * 0.15,
                      color: Constants.SECONDARY_COLOR2),
                  SizedBox(height: size.height * 0.05),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Get in touch.",
                          style: TextStyle(
                            fontFamily: Constants.POPPINS,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.1,
                            color: Constants.BLACK_COLOR2,
                          ),
                        ),
                        SizedBox(height: size.height * 0.025),
                        Text(Constants.CONTACT_TEXT,
                            style: style1),
                      ]),
                  SizedBox(height: size.height * 0.05),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    FaIcon(FontAwesomeIcons.github,
                        color: Constants.BLACK_COLOR2, size: size.width * 0.05),
                    SizedBox(width: size.width * 0.05),
                    InkWell(
                      child: Text("Github",
                          style: style2),
                      onTap: () async {
                        final url = Constants.SOCIAL_MEDIA_PAGES[0];
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrlString(
                            url,
                          );
                        }
                      },
                    ),
                  ]),
                  SizedBox(height: size.height * 0.03),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    FaIcon(FontAwesomeIcons.linkedin,
                        color: Constants.LINKEDIN_LOGO_COLOR,
                        size: size.width * 0.05),
                    SizedBox(width: size.width * 0.05),
                    InkWell(
                      child: Text("LinkedIn",
                          style: style2),
                      onTap: () async {
                        final url = Constants.SOCIAL_MEDIA_PAGES[1];
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrlString(
                            url,
                          );
                        }
                      },
                    ),
                  ]),
                  SizedBox(height: size.height * 0.03),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    FaIcon(FontAwesomeIcons.twitter,
                        color: Constants.TWITTER_LOGO_COLOR,
                        size: size.width * 0.05),
                    SizedBox(width: size.width * 0.05),
                    InkWell(
                      child: Text("Twitter", style: style2),
                      onTap: () async {
                        final url = Constants.SOCIAL_MEDIA_PAGES[2];
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrlString(
                            url,
                          );
                        }
                      },
                    ),
                  ]),
                  SizedBox(height: size.height * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RoundedInputFieldMain3(
                          controller: nameController,
                          icon: Icons.person,
                          iconColor: Constants.SECONDARY_COLOR2,
                          textColor: Constants.BLACK_COLOR2,
                          maxLines: 1,
                          mainText: "",
                          labelText: "Full name",
                          onChanged: (value) {
                            value = nameController.text;
                          },
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedInputFieldEmail(
                            controller: emailController,
                            iconColor: Constants.SECONDARY_COLOR2,
                            textColor: Constants.BLACK_COLOR2,
                            hintText: "Email address"),
                        SizedBox(height: size.height * 0.02),
                        RoundedInputFieldMain3(
                          controller: messageController,
                          icon: Icons.message,
                          iconColor: Constants.SECONDARY_COLOR2,
                          textColor: Constants.BLACK_COLOR2,
                          maxLines: 5,
                          mainText: "",
                          labelText: "Message",
                          onChanged: (value) {
                            value = messageController.text;
                          },
                        ),
                        SizedBox(height: size.height * 0.02),
                        RoundedButtonGeneral(
                          text1: "SEND MESSAGE",
                          text2: "Sending..",
                          width: size.width * 0.35,
                          height: size.height * 0.03,
                          fontSize: size.width * 0.03,
                          color: Constants.SECONDARY_COLOR2,
                          isLoading: false,
                          update: () async {
                            final form = _formKey.currentState!;
                            if (form.validate()) {
                              await sendMessage();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.05)
                ],
              ),
            ),
          ),
          FooterBrief(
            footerHeight: size.height * 0.35,
            footerWidth: size.width,
            mainPaddingHorizontal: size.width * 0.03,
            mainPaddingVertical: size.height * 0.04,
            footerHeadingFontSize: size.width * 0.05,
            circleRadius: size.width * 0.05,
            footerText1Size: size.width * 0.05,
            footerText2Size: size.width * 0.02,
            socialIconsSize: size.width * 0.03,
            sendMessage: () async {
              await sendMessage();
            },
          ),
        ],
      ),
    );
  }

  sendMessage() async {
    final form = _formKey.currentState!;
    if (form.validate()) {
      try {
        final service_id = "service_bjyjohb";
        final template_id = "template_9g64f0r";
        final user_id = "uzKOMkyW6BnitEZz_";
        final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
        final response = await http.post(
          url,
          headers: {
            "origin": "http://localhost",
            "Content-Type": "application/json",
          },
          body: json.encode({
            "service_id": service_id,
            "template_id": template_id,
            "user_id": user_id,
            "template_params": {
              'user_name': nameController.text,
              'user_email': emailController.text.trim(),
              'user_message': messageController.text,
              'to_email': Constants.EMAIL,
            }
          }),
        );
        setState(() {
          nameController.text = "";
          emailController.text = "";
          messageController.text = "";
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Constants.SECONDARY_COLOR,
            content: Text(
                "Thanks for reaching out! I'll get back to you in a giffy.")));
        CurrentPage == "about"
            ? context.goNamed("about")
            : CurrentPage == "certifications"
                ? context.goNamed("certifications")
                : CurrentPage == "contact"
                    ? context.goNamed("contact")
                    : context.goNamed("home");
      } on Exception catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Constants.RED_COLOR,
            content: Text("No internet connection!")));
      }
    }
  }
}
