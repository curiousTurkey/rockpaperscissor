import 'package:flutter/material.dart';
import 'package:rockpaperscissor/Reusable_contents/responsive.dart';
import 'package:smart_alert_dialog/models/alert_dialog_text.dart';
import 'package:smart_alert_dialog/smart_alert_dialog.dart';

Future<void> dialogBuilder(
    BuildContext context,
    String result,
    String compMove,
    String playerMove
    ) async {
  return showDialog(
      context: context, builder: (BuildContext context) {
        return AlertDialog(
          title: Text(''),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Computer Move",
                style: TextStyle(
                  fontSize: screenLayout(40, context),
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                width: screenLayout(220, context),
                height: screenLayout(220, context),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                      image: AssetImage(imageSelectorComputer(compMove))
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: screenLayout(8, context),
              ),
              Text(
                result,
                style: TextStyle(
                  fontSize: screenLayout(65, context)
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: screenLayout(8, context),
              ),
              Container(
                width: screenLayout(200, context),
                height: screenLayout(200, context),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(image: AssetImage(imageSelectorPlayer(playerMove))),
                ),
              ),
              Text("Player Move",
                style : TextStyle(
                    fontSize: screenLayout(40, context),
                    fontWeight: FontWeight.bold
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Play Again!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenLayout(30, context)
                ),
              ),
                style: ElevatedButton.styleFrom(
                    fixedSize : Size(screenLayout(600, context), screenLayout(100, context))
                ),
              ),
            ],
          ),
        );
  }
  );
}

imageSelectorComputer(String move){
  late String path;
  if(move == 'Rock'){
    path = "Assets/images/rock-emoji.png";
  }
  else if(move == 'Paper') {
    path = "Assets/images/paper-emoji.png";
  }
  else if(move == 'Scissors'){
    path = "Assets/images/scissors-emoji.png";
  }
  return path;
}
imageSelectorPlayer(String result){
  late String path;
  if(result == 'Rock'){
    path = "Assets/images/rock-emoji.png";
  }
  else if(result == 'Paper') {
    path = "Assets/images/paper-emoji.png";
  }
  else if(result == 'Scissors'){
    path = "Assets/images/scissors-emoji.png";
  }
  return path;
}