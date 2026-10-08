import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_da_1/screens/register_screen.dart';
import 'package:tictic_da_1/widgets/partials/text_custom.dart';

import '../styles/size.dart';
import '../widgets/login/login_form.dart';
import '../widgets/partials/w_back_button.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WBackButton(),
                  SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width:
                        MediaQuery.of(context).size.width /
                        kLogoWelcomeWidthSubDiviser,
                  ),
                  SizedBox(height: kSpacerForm),
                  LoginForm(),
                  SizedBox(height: kSpacerForm),
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
      ),
    );
  }
}
