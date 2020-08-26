import 'package:flutter/material.dart';
import '../common/icons.dart';

@immutable
class NewComp extends StatelessWidget{

  const NewComp();

  Widget build(BuildContext context){
    return Column(
      children: [Text('New Competition'), Icon(ADD_BOX)],
    );
  }
}