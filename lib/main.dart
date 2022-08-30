import 'package:daily_exercises/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'cario',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kTextColor,
            ),
      ),
      home: HonmeScreen(),
    );
  }
}

class HonmeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size =
        MediaQuery.of(context).size; //give total height and width of screen
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                  color: Color(0xFFF5CEB8),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(
                          "assets/images/undraw_pilates_gpdb.png")))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/menu.svg",
                          allowDrawingOutsideViewBox: true),
                    ),
                  ),
                  Text('Good Morning \nShishir',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w900)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
