import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class taskTab extends StatelessWidget {
  const taskTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
        startActionPane: ActionPane(motion: DrawerMotion(),
    children: [
    SlidableAction(onPressed: (context){
    },
    backgroundColor: Colors.red,
    icon: Icons.delete,
    label: "Delete",
    borderRadius: BorderRadius.only(topLeft: Radius.circular(18),
    bottomLeft: Radius.circular(18)
    ),
    ),
    SlidableAction(onPressed: (context){
    },
    backgroundColor: Colors.blue,
    icon: Icons.edit,
    label: "Edit",
   )
    ]
    ),
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),

        child: Row(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 3,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "task title",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "task descraption",
                  style: TextStyle(fontSize: 20,),
                ),
              ],
            ),
            SizedBox(width: 80),
            Container(
                width: 69,
                height: 34,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Icon(Icons.done, color: Colors.white,)),
          ],
        ),


      ),
    );
  }
}