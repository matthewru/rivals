import 'package:flutter/material.dart';
import '../common/icons.dart';

@immutable
class RivalsList extends StatelessWidget{

  const RivalsList();

  Widget build(BuildContext context){
    return Column(
      children: [Text('Rivals List'), Icon(PEOPLE)],
    );
  }
}