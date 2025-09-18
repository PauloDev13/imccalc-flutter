import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:imccalc_flutter/constantes.dart';
import 'package:imccalc_flutter/telas/tela_principal.dart';
import 'package:lottie/lottie.dart';

class AnimatedSplashScreenWidget extends StatelessWidget {
  const AnimatedSplashScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(child: Lottie.asset('assets/girl_music.json')),
      nextScreen: TelaPrincipal(),
      splashIconSize: 250,
      duration: 3000,
      backgroundColor: kCorInativaCartao,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
