import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_da_1/screens/register_screen.dart';
import 'package:tictic_da_1/screens/welcome_screen.dart';
import 'package:tictic_da_1/styles/color.dart';
import 'package:tictic_da_1/widgets/text_custom.dart';

import '../styles/size.dart';
import '../widgets/custom_btn.dart';
import '../widgets/w_back_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

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
                WBackButton(),
                SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width:
                      MediaQuery.of(context).size.width /
                      kLogoWelcomeWidthSubDiviser,
                ),
                SizedBox(height: 64),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CustomBtn(
                      label: 'Je me connecte',
                      action: () {},
                      isDark: true,
                    ),
                  ),
                ),
                SizedBox(height: 64),
                TextCustom(
                  topText: 'Je n’ai pas de compte.',
                  bottomText: 'Créer mon compte !',
                  action: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
