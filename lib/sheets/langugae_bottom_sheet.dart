import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
   LanguageBottomSheet({super.key});
bool isEnglish=false;
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
                "English",
                style: TextStyle(fontSize: 30,
                    color: isEnglish? Colors.blue :Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              isEnglish?
              Icon(Icons.done,color: Colors.blue,):SizedBox() ,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Arbaic",
                style: TextStyle(fontSize: 30,
                    color: isEnglish? Colors.black : Colors.blue,
                    fontWeight: FontWeight.w300),

              ),
             isEnglish?SizedBox():
               Icon(Icons.done,color: Colors.blue,),
            ],
          ),
        ],
      ),
    );
  }
}
