import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  ThemeBottomSheet({super.key});
  bool isLight=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Light",
                style: TextStyle(fontSize: 30,
                    color: isLight? Colors.blue :Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              isLight?
              Icon(Icons.done,color: Colors.blue,):SizedBox() ,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "dart",
                style: TextStyle(fontSize: 30,
                    color: isLight? Colors.black : Colors.blue,
                    fontWeight: FontWeight.w300),

              ),
              isLight?SizedBox():
              Icon(Icons.done,color: Colors.blue,),
            ],
          ),
        ],
      ),
    );
  }
}
