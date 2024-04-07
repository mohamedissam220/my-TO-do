import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytodo/tabs/tasks_tabs.dart';

class Tasktabs extends StatelessWidget {
   Tasktabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Container(
        height: 120,
        child: Stack(
            children:[
              Container(
              height: 70,
              color: Colors.blue,
              ), Positioned(

                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),

                  height: 90,
                  locale: "en",
                  selectionColor: Colors.blue,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected

                  },
                ),
              ),

            ]),
      ),

      SizedBox(height: 16,),
      Expanded(
        child: ListView.separated(

            separatorBuilder: (context,index)=>SizedBox(height: 8,),
            itemCount: 9,
            itemBuilder:(context,index) {
             return taskTab();
            }
        ),
      ),
    ],
    );
  }
}
