// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:davidkemdirim/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width,
      elevation: 60.0,
      child: Material(
        color: Constants.BLACK_COLOR2,
        child: Stack(children: [
          Container(
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/nav_background.jpg"),
              fit: BoxFit.fill,
            )),
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            child: ListView(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      bottomRight: Radius.circular(32)),
                ),
                SizedBox(height: size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Hello there!",
                        style: TextStyle(
                            fontFamily: 'Arima',
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Constants.SECONDARY_COLOR)),
                    IconButton(
                      icon: Icon(Icons.close_rounded,
                          size: size.width * 0.05,
                          color: Constants.WHITE_COLOR),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.05),
                Column(
                  children: [
                    buildMenuItem(
                        text: 'Home',
                        tileWidth: size.width * 0.35,
                        onClicked: () {
                          setState(() {
                            selectedItem(
                                context, CurrentPage != "home" ? 0 : 4);
                          });
                        }),
                    SizedBox(height: size.height * 0.1),
                    buildMenuItem(
                        text: 'About',
                        tileWidth: size.width * 0.35,
                        onClicked: () {
                          setState(() {
                            selectedItem(
                                context, CurrentPage != "about" ? 1 : 4);
                          });
                        }),
                    SizedBox(height: size.height * 0.1),
                    buildMenuItem(
                      text: 'Certifications',
                      tileWidth: size.width * 0.35,
                      onClicked: () => selectedItem(
                          context, CurrentPage != "certifications" ? 2 : 4),
                    ),
                    SizedBox(height: size.height * 0.1),
                    buildMenuItem(
                      text: 'Contact',
                      tileWidth: size.width * 0.35,
                      onClicked: () => selectedItem(
                          context, CurrentPage != "contact" ? 3 : 4),
                    ),
                    SizedBox(height: size.height * 0.1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.copyright,
                            size: size.width * 0.02,
                            color: Constants.WHITE_COLOR),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          Constants.FOOTER_TEXT2,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.02,
                            color: Constants.WHITE_COLOR,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required double tileWidth,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    var hoverColor = Constants.OFF_WHITE_COLOR;
    const double size = 15;
    var borderRadius = BorderRadius.all(Radius.circular(32));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        title: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: size),
        ),
        hoverColor: hoverColor,
        onTap: onClicked,
      ),
    );
  }

  selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.pop();
        CurrentPage != "home" ? context.goNamed("home") : null;
        break;
      case 1:
        context.pop();
        CurrentPage != "about" ? context.goNamed("about") : null;
        break;
      case 2:
        context.pop();
        CurrentPage != "certifications"
            ? context.goNamed("certifications")
            : null;
        break;
      case 3:
        context.pop();
        CurrentPage != "contact" ? context.goNamed("contact") : null;
        break;
      case 4:
        // Navigator.of(context).pop(context);
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (context) => Home(currentIndex2: 4)),
        // );
        break;
    }
  }
}
