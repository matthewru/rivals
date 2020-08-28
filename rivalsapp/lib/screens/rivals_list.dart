import 'package:flutter/material.dart';
import '../common/icons.dart';
import '../common/colors.dart';
import '../widgets/rivals_list_dialog.dart';

@immutable
class RivalsList extends StatelessWidget {
  const RivalsList();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Rivals List'), Icon(PEOPLE)],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => RivalsListDialog());
            },
            label: Text('New Rival'),
            icon: Icon(ADD_BOX),
            backgroundColor: RED,
          )),
    );
  }
}
