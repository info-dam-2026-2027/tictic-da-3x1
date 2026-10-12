import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_da_1/screens/welcome_screen.dart';

import '../styles/color.dart';
import '../styles/size.dart';
import '../styles/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static final String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final _itemsTitle = [
    'Total à recevoir',
    'Total à donner',
    'Total général',
  ];

  final _itemsPrice = [
    '80€',
    '100€',
    '120€',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Actions rapides')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        kBorderRadiusCircularMax,
                      ),
                      border: Border.all(
                        width: kBorderInputWidth,
                        color: kLightGreen,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: IconButton(
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, WelcomeScreen.routeName);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 48,
                      height: 48,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kSpacer),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 6,
              backgroundImage: AssetImage('assets/img/dog.png'),
            ),
            SizedBox(height: kSpacer),
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Hey, Dylan !', style: kHomeWelcomeMessage),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'On vous doit de l’argent !',
                  style: kHomeWelcomeSubMessage,
                ),
              ),
            ),
            SizedBox(height: kSpacer),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/back2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kPaddingXL),
                child: Container(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _itemsTitle.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardInfoSlider(title: _itemsTitle[index], price: _itemsPrice[index]);
                    },
                    separatorBuilder: (BuildContext context, _) {
                      return SizedBox(width: 24,);
                    },
                    //CardInfoSlider(title: 'Total à payer :', price: '80€',),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardInfoSlider extends StatelessWidget {
  const CardInfoSlider({super.key, required this.title, required this.price});

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(kPadding),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(title, style: kHomeBoxText),
            SizedBox(height: 4),
            Text(price, style: kHomeBoxNumber),
          ],
        ),
      ),
    );
  }
}
