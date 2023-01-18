// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors, depend_on_referenced_packages, unused_local_variable, unused_catch_clause
import 'dart:convert';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:davidkemdirim/about/about.dart';
import 'package:davidkemdirim/certification/cetification.dart';
// import 'package:davidkemdirim/components/db.dart' as db;
import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/components/custom_route.dart';
import 'package:davidkemdirim/components/main_button.dart';
import 'package:davidkemdirim/components/text_field.dart';
import 'package:davidkemdirim/contact/contact.dart';
import 'package:davidkemdirim/home/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

class Footer extends StatefulWidget {
  Footer(
      {Key? key,
      required this.footerWidth,
      required this.mainPaddingHorizontal,
      required this.mainPaddingVertical,
      required this.formKey,
      required this.footerHeadingFontSize,
      required this.emailWidth,
      required this.emailHorizontalGap,
      required this.emailVerticalGap,
      required this.emailRadius,
      required this.messageWidth,
      required this.messageHorizontalGap,
      required this.messageVerticalGap,
      required this.messageRadius,
      required this.buttonSMWidth,
      required this.buttonSMBorderWidth,
      required this.buttonSMHeight,
      required this.buttonSMIconSize,
      required this.buttonSMFontSize,
      required this.buttonSMHasIcon,
      required this.sendMessage,
      required this.circleRadius,
      required this.footerText1Size,
      required this.footerText2Size,
      required this.buttonCMWidth,
      required this.buttonCMBorderWidth,
      required this.buttonCMHeight,
      required this.buttonCMIconSize,
      required this.buttonCMFontSize,
      required this.buttonCMHasIcon,
      required this.socialIconsSize})
      : super(key: key);
  final double footerWidth;
  // final Color footerColor;
  final double mainPaddingHorizontal;
  final double mainPaddingVertical;
  late var formKey;
  final double footerHeadingFontSize;
  final double emailWidth;
  final double emailHorizontalGap;
  final double emailVerticalGap;
  final double emailRadius;
  final double messageWidth;
  final double messageHorizontalGap;
  final double messageVerticalGap;
  final double messageRadius;
  final double buttonSMWidth;
  final double buttonSMBorderWidth;
  final double buttonSMHeight;
  final double buttonSMIconSize;
  final double buttonSMFontSize;
  final bool buttonSMHasIcon;
  final Function sendMessage;
  final double circleRadius;
  final double footerText1Size;
  final double footerText2Size;
  final double buttonCMWidth;
  final double buttonCMBorderWidth;
  final double buttonCMHeight;
  final double buttonCMIconSize;
  final double buttonCMFontSize;
  final bool buttonCMHasIcon;
  final double socialIconsSize;

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  final mailtoLinkPayment = Mailto(
    to: [Constants.EMAIL],
    subject: '',
    body: "",
  );
  Future<void> launchInBrowser(String url) async {
    if (await UrlLauncherPlatform.instance.canLaunch(url)) {
      await UrlLauncherPlatform.instance.launch(
        url,
        useSafariVC: false,
        useWebView: false,
        enableJavaScript: false,
        enableDomStorage: false,
        universalLinksOnly: false,
        headers: <String, String>{},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: widget.footerWidth,
      color: Constants.BLACK_COLOR2,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widget.mainPaddingHorizontal,
            vertical: widget.mainPaddingVertical),
        child: Column(children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  Constants.FOOTER,
                  style: TextStyle(
                    fontFamily: Constants.ARIMA,
                    fontSize: widget.footerHeadingFontSize,
                    fontWeight: FontWeight.bold,
                    color: Constants.WHITE_COLOR,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.02),
                  child: Column(
                    children: [
                      RoundedInputFieldEmail(
                        controller: emailController,
                        iconColor: Constants.BLACK_COLOR,
                        textColor: Constants.BLACK_COLOR2,
                        hintText: "Email address",
                      ),
                      SizedBox(height: size.height * 0.01),
                      RoundedInputFieldMain3(
                          controller: messageController,
                          icon: Icons.message,
                          iconColor: Constants.BLACK_COLOR,
                          textColor: Constants.BLACK_COLOR2,
                          maxLines: 4,
                          mainText: "",
                          labelText: "Leave me a message",
                          onChanged: (value) {
                            value = messageController.text;
                          }),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                MainButton(
                  title: "Send Message",
                  width: widget.buttonSMWidth,
                  borderWidth: widget.buttonSMBorderWidth,
                  height: widget.buttonSMHeight,
                  iconSize: widget.buttonSMIconSize,
                  fontSize: widget.buttonSMFontSize,
                  hasIcon: widget.buttonSMHasIcon,
                  buttonColor: Constants.SECONDARY_COLOR,
                  borderColor: Constants.SECONDARY_COLOR,
                  onPressed: () async {
                    final form = _formKey.currentState!;
                    if (form.validate()) {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return Center(
                                child: CircularProgressIndicator(
                                    color: Constants.SECONDARY_COLOR2));
                          });
                      try {
                        final service_id = "service_bjyjohb";
                        final template_id = "template_9g64f0r";
                        final user_id = "uzKOMkyW6BnitEZz_";
                        final url = Uri.parse(
                            "https://api.emailjs.com/api/v1.0/email/send");
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
                              'user_name': 'unknown',
                              'user_email': emailController.text.trim(),
                              'user_message': messageController.text,
                              'to_email': Constants.EMAIL,
                            }
                          }),
                        );
                        setState(() {
                          emailController.text = "";
                          messageController.text = "";
                        });
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Constants.SECONDARY_COLOR,
                            content: Text("Thanks for reaching out..")));
                        Navigator.push(
                          context,
                          CustomPageRoute(
                              widget: CurrentPage == "about"
                                  ? About()
                                  : CurrentPage == "certifications"
                                      ? Certifications()
                                      : CurrentPage == "contact"
                                          ? Contact()
                                          : Home()),
                        );
                      } on Exception catch (error) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Constants.RED_COLOR,
                            content: Text("No internet connection!")));
                      }
                    }
                    // await widget.sendMessage();
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.1),
          Column(
            children: [
              Stack(children: [
                CircleAvatar(
                  radius: size.width * 0.05,
                  backgroundColor: Constants.PRIMARY_COLOR,
                ),
                Text(
                  Constants.FOOTER_TEXT1,
                  style: TextStyle(
                    fontFamily: Constants.POPPINS,
                    fontSize: widget.footerText1Size,
                    fontWeight: FontWeight.w700,
                    color: Constants.OFF_WHITE_COLOR,
                  ),
                ),
              ]),
              SizedBox(height: size.height * 0.04),
              MainButton(
                title: "Contact me",
                width: widget.buttonCMWidth,
                borderWidth: widget.buttonCMBorderWidth,
                height: widget.buttonCMHeight,
                iconSize: widget.buttonCMIconSize,
                fontSize: widget.buttonCMFontSize,
                hasIcon: widget.buttonCMHasIcon,
                buttonColor: Constants.SECONDARY_COLOR2,
                borderColor: Constants.SECONDARY_COLOR2,
                onPressed: () {
                  context.goNamed("contact");
                },
              ),
              SizedBox(height: size.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github,
                        color: Constants.WHITE_COLOR,
                        size: widget.socialIconsSize),
                    onPressed: () async {
                      final url = Constants.SOCIAL_MEDIA_PAGES[0];
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrlString(
                          url,
                        );
                      }
                    },
                  ),
                  SizedBox(width: size.width * 0.01),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin,
                        color: Constants.WHITE_COLOR,
                        size: widget.socialIconsSize),
                    onPressed: () async {
                      final url = Constants.SOCIAL_MEDIA_PAGES[1];
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrlString(
                          url,
                        );
                      }
                    },
                  ),
                  SizedBox(width: size.width * 0.01),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter,
                        color: Constants.WHITE_COLOR,
                        size: widget.socialIconsSize),
                    onPressed: () async {
                      final url = Constants.SOCIAL_MEDIA_PAGES[2];
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrlString(
                          url,
                        );
                      }
                    },
                  ),
                  SizedBox(width: size.width * 0.01),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.yahoo,
                        color: Constants.WHITE_COLOR,
                        size: widget.socialIconsSize),
                    onPressed: () async {
                      setState(() {
                        launchInBrowser(mailtoLinkPayment.toString());
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.copyright,
                      size: widget.socialIconsSize,
                      color: Constants.WHITE_COLOR),
                  SizedBox(width: size.width * 0.01),
                  Text(
                    Constants.FOOTER_TEXT2,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: widget.footerText2Size,
                      color: Constants.WHITE_COLOR,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: size.height*0.05),
        ]),
      ),
    );
  }
}
