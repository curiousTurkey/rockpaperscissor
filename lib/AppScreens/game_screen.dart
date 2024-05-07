import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rockpaperscissor/Reusable_contents/game_logic.dart';
import 'package:rockpaperscissor/Reusable_contents/gamescreen_container.dart';
import 'package:rockpaperscissor/Reusable_contents/responsive.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    double heightWithoutAppBar = MediaQuery.of(context).size.height - (kBottomNavigationBarHeight + kToolbarHeight);
    return Scaffold(
      backgroundColor: CupertinoColors.systemGreen,
      appBar: AppBar(
        leading: IconButton(onPressed: () {  }, icon: const Icon(Icons.menu)),),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: heightWithoutAppBar / 1.9,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("Assets/images/background.jpg"),
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gameScreenContainer(
                          160,
                          160,
                          'Assets/images/paper-emoji.png',
                          context
                      ),
                      SizedBox(width: screenLayout(100, context),),
                      gameScreenContainer(160,
                          160,
                          'Assets/images/scissors-emoji.png',
                          context
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gameScreenContainer(
                          160,
                          160,
                          'Assets/images/rock-emoji.png',
                          context
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: screenLayout(60, context),
                    backgroundImage: const AssetImage("Assets/images/ai.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenLayout(20, context),),
            Container(
              height: heightWithoutAppBar / 2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("Assets/images/background.jpg"),
                  ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: screenLayout(60, context),
                    backgroundImage: const AssetImage("Assets/images/profile.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          gameLogic('Rock',context);
                        },
                        enableFeedback: true,
                        child: gameScreenContainer(
                            160,
                            160,
                            'Assets/images/rock-emoji.png',
                            context
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        enableFeedback: true,
                        onTap: (){
                          gameLogic('Paper', context);
                        },
                        child: gameScreenContainer(
                            160,
                            160,
                            'Assets/images/paper-emoji.png',
                            context
                        ),
                      ),
                      SizedBox(width: screenLayout(100, context),),
                      InkWell(
                        enableFeedback: true,
                        onTap: (){
                          gameLogic('Scissors', context);
                        },
                        child: gameScreenContainer(
                            160,
                            160,
                            'Assets/images/scissors-emoji.png',
                            context
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
