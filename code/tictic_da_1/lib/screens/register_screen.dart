import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_da_1/screens/login_screen.dart';
import 'package:tictic_da_1/screens/welcome_screen.dart';
import 'package:tictic_da_1/widgets/text_custom.dart';

import '../styles/size.dart';
import '../widgets/custom_btn.dart';
import '../widgets/w_back_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

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
                      label: 'Créer mon compte',
                      action: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      isDark: true,
                    ),
                  ),
                ),
                SizedBox(height: 64),
                TextCustom(
                  topText: 'J’ai déjà un compte.',
                  bottomText: 'Je me connecte !',
                  action: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
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
