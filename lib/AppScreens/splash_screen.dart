import 'package:animated_floating_widget/animated_floating_widget.dart';
import 'package:flutter/material.dart';
import 'package:rockpaperscissor/AppScreens/game_screen.dart';
import 'package:rockpaperscissor/Reusable_contents/responsive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: screenLayout(40, context),
    );
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               FloatingWidget(
                 verticalSpace: screenLayout(20, context),
                 duration: const Duration(seconds: 1),
                 reverseDuration: const Duration(seconds: 1),
                 child: Image.asset("Assets/images/splash-screen.png",
                 width: screenLayout(450, context),
                 ),
               ),
                Text(
                  "Rock Paper Scissors !",
                  style: textStyle,
                ),
             ],
           ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                enableFeedback: true,
                elevation: 10,
                shadowColor: Colors.black,
                textStyle: textStyle,
                minimumSize: Size(screenLayout(600, context), screenLayout(100, context))
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const GameScreen()));
              },
              child: Text('Get Started',
                style: TextStyle(
                  fontSize: screenLayout(45, context)
                ),
              ),
            )
          ], //children
        ),
      ),
    );
  }
}
