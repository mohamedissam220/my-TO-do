import 'package:flutter/material.dart';
import 'package:mytodo/sheets/dart_theme.dart';
import 'package:mytodo/sheets/langugae_bottom_sheet.dart';

class SettingTabs extends StatelessWidget {
  const SettingTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text("Language"),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context,
                  builder:(context){
                return Container(child:  LanguageBottomSheet()


                );
                  } );
            },
            child: Container(
              width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue)

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Arabic"),
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Text("Theme"),
          SizedBox(
            height: 16,
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue)

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                    onTap: (){
                      showModalBottomSheet(context: context,
                          builder: (context){
                          return Container(
                            child: ThemeBottomSheet(),
                          );
                          });
                    },
                    child: Text("Light")),
              )),
        ],

      ),
    );
  }
}
