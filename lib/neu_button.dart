import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {

  final onTap;
  final bool isbuttonPressed;

  NeuButton({this.onTap, required this.isbuttonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 160,
        width: 160,
        decoration: BoxDecoration(
            color: isbuttonPressed ? Colors.grey.shade300 : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: isbuttonPressed ? Colors.grey.shade200: Colors.grey.shade300),
            boxShadow: isbuttonPressed ? [
              //do nothing it is true
            ]:[
              BoxShadow(
                //darker shadow on the bottom right
                  color: Colors.grey.shade500,
                  blurRadius: 15.0,//how much it blurs
                  spreadRadius: 1.0,//how much it spreads
                  offset: Offset(6,6) //this will take it to the bottom right corner
              ),
              BoxShadow(
                //lighter shadow on the top left
                  color: Colors.white,
                  blurRadius: 15.0,//how much it blurs
                  spreadRadius: 1.0,//how much it spreads
                  offset: Offset(-6,-6) //this will take it to the top left corner
              ),


            ]
        ),
        child: Icon(Icons.favorite_rounded, color: isbuttonPressed ? Colors.red[200]: Colors.red[400],
          size: 60,),
      ),
    );
  }
}
