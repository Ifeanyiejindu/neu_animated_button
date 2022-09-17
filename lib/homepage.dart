import 'package:flutter/material.dart';
import 'package:neu_animated_button/neu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   bool isButtonPressed = false;
  void _buttonIsPressed(){
    setState(() {
      if(isButtonPressed == false){
        isButtonPressed = true;
      }
      else if(isButtonPressed == true){
        isButtonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: NeuButton(
          onTap: _buttonIsPressed,
          isbuttonPressed: isButtonPressed,
        )
      ),
    );
  }
}
