import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_da_1/screens/login_screen.dart';
import 'package:tictic_da_1/widgets/register/register_form.dart';
import 'package:tictic_da_1/widgets/partials/text_custom.dart';

import '../styles/size.dart';
import '../widgets/partials/w_back_button.dart';

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
                  RegisterForm(),
                  SizedBox(height: kSpacerForm),
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
      ),
    );
  }
}


