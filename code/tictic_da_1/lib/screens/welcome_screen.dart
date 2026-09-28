import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/icons/logo.svg',
                width: MediaQuery.of(context).size.width / 3,
              ),
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
            ],
          ),
        ),
      ),
    );
  }
}
