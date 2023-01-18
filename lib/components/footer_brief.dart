// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, depend_on_referenced_packages

import 'package:davidkemdirim/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

class FooterBrief extends StatefulWidget {
  FooterBrief(
      {Key? key,
      required this.footerHeight,
      required this.footerWidth,
      required this.mainPaddingHorizontal,
      required this.mainPaddingVertical,
      required this.footerHeadingFontSize,
      required this.sendMessage,
      required this.circleRadius,
      required this.footerText1Size,
      required this.footerText2Size,
      required this.socialIconsSize})
      : super(key: key);
  // final double spacing;
  final double footerHeight;
  final double footerWidth;
  // final Color footerColor;
  final double mainPaddingHorizontal;
  final double mainPaddingVertical;
  final double footerHeadingFontSize;
  final Function sendMessage;
  final double circleRadius;
  final double footerText1Size;
  final double footerText2Size;
  final double socialIconsSize;

  @override
  State<FooterBrief> createState() => _FooterBriefState();
}

class _FooterBriefState extends State<FooterBrief> {
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
      height: widget.footerHeight,
      width: widget.footerWidth,
      color: Constants.BLACK_COLOR2,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widget.mainPaddingHorizontal,
            vertical: widget.mainPaddingVertical),
        child: Column(children: [
          Column(children: [
            Text(
              Constants.FOOTER,
              style: TextStyle(
                fontFamily: Constants.ARIMA,
                fontSize: widget.footerHeadingFontSize,
                fontWeight: FontWeight.bold,
                color: Constants.WHITE_COLOR,
              ),
            ),
            SizedBox(height: size.height * 0.05),
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
                    size: widget.socialIconsSize, color: Constants.WHITE_COLOR),
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
            ),
            // SizedBox(width: size.width * 0.01),
          ])
        ]),
      ),
    );
  }
}
