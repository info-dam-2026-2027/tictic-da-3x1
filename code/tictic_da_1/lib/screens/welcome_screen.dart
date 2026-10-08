import 'package:flutter/material.dart';
import 'package:tictic_da_1/screens/register_screen.dart';

import '../styles/size.dart';
import '../widgets/welcome/carousel.dart';
import '../widgets/partials/custom_btn.dart';
import '../widgets/partials/logo_application.dart';
import '../widgets/welcome/separator_text.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: kWelcomeLogoPaddingTop,
                    bottom: kWelcomeLogoPaddingBottom,
                  ),
                  child: LogoApplication(),
                ),
                Carousel(),
                SizedBox(height: kSpacer * 4,),
                CustomBtn(
                  action: () => {Navigator.pushNamed(context, '/home')},
                  label: 'Continuer sans compte',
                  isDark: true,
                ),
                SeparatorText(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBtn(
                        action: () => {Navigator.pushNamed(context, LoginScreen.routeName)},
                        label: 'Se connecter',
                        isDark: false,
                      ),
                      SizedBox(width: kSpacer,),
                      CustomBtn(
                        action: () => {Navigator.pushNamed(context, RegisterScreen.routeName)},
                        label: 'S’inscrire',
                        isDark: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}