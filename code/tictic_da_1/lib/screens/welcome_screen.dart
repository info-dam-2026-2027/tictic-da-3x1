import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_da_1/styles/color.dart';
import 'package:tictic_da_1/styles/size.dart';
import 'package:tictic_da_1/styles/text.dart';
import 'package:tictic_da_1/widgets/carousel.dart';

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
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Continuer sans compte'),
                ),

                SizedBox(height: 24),

                CustomBtn(
                    label: 'Se connecter', 
                    action: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    isDark: true
                ),
                CustomBtn(
                  label: 'Créer un compte',
                  action: () {},
                  isDark: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.label,
    required this.action,
    required this.isDark
  });

  final String label;
  final GestureTapCallback action;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          color: isDark ? kDarkGreenColor : kLightGreenColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Text(label, style: isDark ? kButtonTextDark : kButtonTextLight),
        ),
      ),
    );
  }
}
