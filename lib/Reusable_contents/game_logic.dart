import 'dart:math';
import 'package:rockpaperscissor/Reusable_contents/smart_alert_box.dart';
import 'package:smart_alert_dialog/smart_alert_dialog.dart';
import 'package:flutter/material.dart';

String compMove () {
  late String compMove ;
  double randomNumber = Random().nextDouble();
  if(randomNumber >= 0 && randomNumber < (1/3)){
    compMove = "Rock";
  } else if(randomNumber > (1/3) && randomNumber <= (2/3)){
    compMove = "Paper";
  }
  else if(randomNumber > (2/3) && randomNumber <= 1.0){
    compMove = "Scissors";
  }
  return compMove;
}


gameLogic (String playerMove, BuildContext context) {
  late String result;
  String computerMove = compMove();
  if(playerMove == 'Rock') {
    if(computerMove == 'Rock') {
      result = "It's a Tie";
    } else if(computerMove == 'Paper') {
      result = "You Lost";
    } else if(computerMove == 'Scissors') {
      result = "You Won";
    }
  } else if(playerMove == 'Paper'){
    if(computerMove == 'Rock') {
      result = "You Won";
    } else if(computerMove == 'Paper') {
      result = "It's a Tie";
    } else if(computerMove == 'Scissors') {
      result = "You Lost";
    }
  } else if(playerMove == 'Scissors') {
    if(computerMove == 'Rock') {
      result = "You Lost";
    } else if(computerMove == 'Paper') {
      result = "You Won";
    } else if(computerMove == 'Scissors') {
      result = "It's a Tie";
    }
  }
  dialogBuilder(context,result,computerMove,playerMove);
}