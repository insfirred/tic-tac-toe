import 'package:flutter/material.dart';

import './widgets/box.dart';

class homeScreen extends StatefulWidget {

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var rightBorder = const Border(right: BorderSide(color: Colors.white,width: 8));

  var rightBottomBorder = const Border(
        right: BorderSide(color: Colors.white,width: 8),
        bottom: BorderSide(color: Colors.white,width: 8)
      );

  var bottomBorder = const Border(bottom: BorderSide(color: Colors.white,width: 8));

  var noBorder = const Border(top: BorderSide(width: 0));

  chance(){
    if(turn=="X"){
      turn = "O";
    }
    else{
      turn = "X";
    }
  }

  var turn = "O";

  var boxText0 = "";
  var boxText1 = "";
  var boxText2 = "";
  var boxText3 = "";
  var boxText4 = "";
  var boxText5 = "";
  var boxText6 = "";
  var boxText7 = "";
  var boxText8 = "";

  bool isEmpty0 = true;
  bool isEmpty1 = true;
  bool isEmpty2 = true;
  bool isEmpty3 = true;
  bool isEmpty4 = true;
  bool isEmpty5 = true;
  bool isEmpty6 = true;
  bool isEmpty7 = true;
  bool isEmpty8 = true;
  
  var playerName1 = "Player 1";
  var playerName2 = "Player 2";

  winnerPopUp(var winner){
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context)=> AlertDialog(
        title: Text('$winner WINS 🎉',textAlign: TextAlign.center,),
        actions: [
          ElevatedButton(
            onPressed: (){
              setState(() {
                turn = "O";

                boxText0 = "";
                boxText1 = "";
                boxText2 = "";
                boxText3 = "";
                boxText4 = "";
                boxText5 = "";
                boxText6 = "";
                boxText7 = "";
                boxText8 = "";

                isEmpty0 = true;
                isEmpty1 = true;
                isEmpty2 = true;
                isEmpty3 = true;
                isEmpty4 = true;
                isEmpty5 = true;
                isEmpty6 = true;
                isEmpty7 = true;
                isEmpty8 = true;
                    
              });
              Navigator.of(context).pop();
            },
            child: Text('Play Again')
          )
        ],
      )
    );
  }

  tiePopUp(){
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context)=> AlertDialog(
        title: Text('It\'s a tie 🙂',textAlign: TextAlign.center,),
        actions: [
          ElevatedButton(
            onPressed: (){
              setState(() {
                turn = "O";

                boxText0 = "";
                boxText1 = "";
                boxText2 = "";
                boxText3 = "";
                boxText4 = "";
                boxText5 = "";
                boxText6 = "";
                boxText7 = "";
                boxText8 = "";

                isEmpty0 = true;
                isEmpty1 = true;
                isEmpty2 = true;
                isEmpty3 = true;
                isEmpty4 = true;
                isEmpty5 = true;
                isEmpty6 = true;
                isEmpty7 = true;
                isEmpty8 = true;
                    
              });
              Navigator.of(context).pop();
            },
            child: Text('Play Again')
          )
        ],
      )
    );
  }

  tieChecker(){
    if(isEmpty0==false &&  isEmpty1==false &&  isEmpty2==false &&  isEmpty3==false &&  isEmpty4==false &&  isEmpty5==false &&  isEmpty6==false &&  isEmpty7==false &&  isEmpty8==false  ){
      tiePopUp();
    }
  }
  checkWinner(){
    if(boxText0 == boxText1 && boxText1 == boxText2  &&  boxText0 == 'O'){winnerPopUp(playerName1);}
    if(boxText3 == boxText4 && boxText4 == boxText5  &&  boxText3 == 'O'){winnerPopUp(playerName1);}
    if(boxText6 == boxText7 && boxText7 == boxText8  &&  boxText6 == 'O'){winnerPopUp(playerName1);}
    if(boxText0 == boxText3 && boxText3 == boxText6  &&  boxText0 == 'O'){winnerPopUp(playerName1);}
    if(boxText1 == boxText4 && boxText4 == boxText7  &&  boxText1 == 'O'){winnerPopUp(playerName1);}
    if(boxText2 == boxText5 && boxText5 == boxText8  &&  boxText2 == 'O'){winnerPopUp(playerName1);}
    if(boxText0 == boxText4 && boxText4 == boxText8  &&  boxText0 == 'O'){winnerPopUp(playerName1);}
    if(boxText2 == boxText4 && boxText4 == boxText6  &&  boxText2 == 'O'){winnerPopUp(playerName1);}

    if(boxText0 == boxText1 && boxText1 == boxText2  &&  boxText0 == 'X'){winnerPopUp(playerName2);}
    if(boxText3 == boxText4 && boxText4 == boxText5  &&  boxText3 == 'X'){winnerPopUp(playerName2);}
    if(boxText6 == boxText7 && boxText7 == boxText8  &&  boxText6 == 'X'){winnerPopUp(playerName2);}
    if(boxText0 == boxText3 && boxText3 == boxText6  &&  boxText0 == 'X'){winnerPopUp(playerName2);}
    if(boxText1 == boxText4 && boxText4 == boxText7  &&  boxText1 == 'X'){winnerPopUp(playerName2);}
    if(boxText2 == boxText5 && boxText5 == boxText8  &&  boxText2 == 'X'){winnerPopUp(playerName2);}
    if(boxText0 == boxText4 && boxText4 == boxText8  &&  boxText0 == 'X'){winnerPopUp(playerName2);}
    if(boxText2 == boxText4 && boxText4 == boxText6  &&  boxText2 == 'X'){winnerPopUp(playerName2);}
  }

  TextEditingController ControllerOne = TextEditingController();
  TextEditingController ControllerTwo = TextEditingController();

  nameChanger(){
    return showDialog(
      context: context,
      builder: (context)=> AlertDialog(
        content: SizedBox(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: Text('Player 1', style: TextStyle(fontSize: 25),),
              ),
              TextField(
                controller: ControllerOne,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.blueGrey ,width: 1),borderRadius: BorderRadius.circular(15),),
                  hintText: 'Player1 Name',
                  hintStyle: TextStyle(color: Colors.blueGrey.shade300),
                ),
              ),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: Text('Player 2', style: TextStyle(fontSize: 25),),
              ),
              TextField(
                controller: ControllerTwo,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.blueGrey ,width: 1),borderRadius: BorderRadius.circular(15),),
                  hintText: 'Player2 Name',
                  hintStyle: TextStyle(color: Colors.blueGrey.shade300),
                ),
              ),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: (){
              setState(() {
                playerName1 = (ControllerOne.text == "") ? "Player 1" :  ControllerOne.text;
                playerName2 = (ControllerTwo.text == "") ? "Player 2" :  ControllerTwo.text;    
              });
              print(playerName1);
              print(playerName2);
              Navigator.of(context).pop();
            },
            child: Text("Submit")
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [

          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Text(playerName1 ,style: TextStyle(color: (turn=="O")?Colors.white:Colors.grey.shade700, fontSize: (turn=='O')?40:20),),
            const SizedBox(width: 100,),
            Text(playerName2 ,style: TextStyle(color: (turn=="O")?Colors.grey.shade700:Colors.white, fontSize: (turn=='O')?20:40),),
          ],),

          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,children:<Widget> [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty0){
                        boxText0 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty0 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText0 ,rightBottomBorder)),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty1){
                        boxText1 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty1 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText1 ,rightBottomBorder)),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty2){
                        boxText2 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty2 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText2 ,bottomBorder)),
              ],),
        
              Row(mainAxisAlignment: MainAxisAlignment.center,children:<Widget> [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty3){
                        boxText3 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty3 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText3 ,rightBottomBorder)),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty4){
                        boxText4 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty4 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText4 ,rightBottomBorder)),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty5){
                        boxText5 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty5 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText5 ,bottomBorder)),
              ],),
        
              Row(mainAxisAlignment: MainAxisAlignment.center,children:<Widget> [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty6){
                        boxText6 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty6 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText6 ,rightBorder)),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty7){
                        boxText7 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty7 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText7 ,rightBorder)),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isEmpty8){
                        boxText8 = (turn=="O") ? "O" : "X";
                        chance();
                        isEmpty8 = false;
                      }
                    });
                    checkWinner();
                    tieChecker();
                  },
                  child: Box(boxText8 ,noBorder)),
              ],),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: (){
                  nameChanger();
                },
                child: Text("Change Player Names"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey.shade800,
                )
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    turn = "O";

                    boxText0 = "";
                    boxText1 = "";
                    boxText2 = "";
                    boxText3 = "";
                    boxText4 = "";
                    boxText5 = "";
                    boxText6 = "";
                    boxText7 = "";
                    boxText8 = "";

                    isEmpty0 = true;
                    isEmpty1 = true;
                    isEmpty2 = true;
                    isEmpty3 = true;
                    isEmpty4 = true;
                    isEmpty5 = true;
                    isEmpty6 = true;
                    isEmpty7 = true;
                    isEmpty8 = true;
                    
                    // playerName1 = "Player 1";
                    // playerName2 = "Player 2"; 
                  });
                },
                child: Text('Restart'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey.shade800,
                )
              ),
            ],
          )
          
        ],),
      ),
    );
  }
}