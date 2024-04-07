import 'package:flutter/material.dart';
import 'package:mytodo/tabs/add_tasks_bottom_sheet.dart';
import 'package:mytodo/tabs/setting_tab.dart';
import 'package:mytodo/tabs/tabs.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routename = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xffDFECDB),
      appBar: AppBar(
        title: Text(
          "My To Do",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (contex) {
                return Container(
                    padding: EdgeInsets.only(

                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskBottomSheet());
              });
        },
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          Icons.add,
          color: Colors.white,
          weight: 3,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        height: 60,
        child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.task), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ]),
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [Tasktabs(), SettingTabs()];
}
