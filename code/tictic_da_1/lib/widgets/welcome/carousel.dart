import 'package:flutter/material.dart';

import '../../styles/color.dart';
import '../../styles/size.dart';
import '../../styles/text.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // Déclarer un tableau
  final _items = [
    'Les bons comptes font les bons amis !',
    'Partagez les dépenses, pas les soucis.',
    'Vos dépenses à plusieurs, simplement équilibrées.',
    'Profitez ensemble, on s’occupe des comptes !',
    'Moins de calculs, plus de bons moments.'
  ];

  // Déclarer le controller
  final PageController controller = PageController();

  // Déclarer le current index des barres
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kCarouselHeight,
          child: PageView.builder(
            controller: controller,
            itemCount: _items.length,
            itemBuilder: (context, i) {
              return Center(child: Text(_items[i], style: kCarouselText));
            },
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Row(
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
                    padding: const EdgeInsets.all(kPaddingXS),
                    child: Container(
                      height: kHeightCarouselBar,
                      width:
                      (MediaQuery.of(context).size.width / _items.length) -
                          32,
                      decoration: BoxDecoration(
                        color: _currentIndex == i ? kDarkGreenColor : kWhiteColor,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
