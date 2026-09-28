import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_da_1/styles/color.dart';
import 'package:tictic_da_1/styles/size.dart';
import 'package:tictic_da_1/styles/text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width:
                      MediaQuery.of(context).size.width /
                      kLogoWelcomeWidthSubDiviser,
                ),
                Carousel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  //déclarer notre tableau
  final _items = ['Texte 1', 'Texte 2', 'Texte 3', 'Texte 4'];

  // Déclarer le controller
  final PageController controller = PageController();

  // Déclarer l'index actuel
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kCarouselWelcomeHeight,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: _items.length,
            itemBuilder: (context, i) {
              return Center(
                child: Text(_items[i], style: kCarouselWelcomeStyleText),
              );
            },
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < _items.length; i++)
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  controller.animateToPage(
                    i,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _currentIndex == i ? kDarkGreenColor : kWhiteColor,
                    ),
                    height: 6,
                    width:
                        (MediaQuery.of(context).size.width / _items.length) -
                        (36),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
