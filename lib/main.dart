// ignore_for_file: prefer_const_constructors

import 'package:davidkemdirim/about/about.dart';
import 'package:davidkemdirim/certification/cetification.dart';
import 'package:davidkemdirim/components/constants.dart';
import 'package:davidkemdirim/contact/contact.dart';
import 'package:davidkemdirim/home/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

Future main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DavidKemdirim());
}
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class DavidKemdirim extends StatefulWidget {
  const DavidKemdirim({Key? key}) : super(key: key);

  @override
  State<DavidKemdirim> createState() => _DavidKemdirimState();
}

class _DavidKemdirimState extends State<DavidKemdirim> {
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(debugLogDiagnostics: true,
        // errorBuilder: (context, state) => ErrorPage(),
        routes: [
          GoRoute(
            name: "home",
            path: "/",
            builder: (context, state) => Home(),
          ),
          GoRoute(
            name: "about",
            path: "/about",
            builder: (context, state) => About(),
          ),
          GoRoute(
            name: "certifications",
            path: "/certifications",
            builder: (context, state) => Certifications(),
          ),
          GoRoute(
            name: "contact",
            path: "/contact",
            builder: (context, state) => Contact(),
          ),
        ]);
    return MaterialApp.router(
      scrollBehavior: MyCustomScrollBehavior(),
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: Constants.APP_TITLE,
    );
  }
}
