import 'package:flutter/material.dart';
import '../common/icons.dart';

@immutable
class Dashboard extends StatelessWidget{

  const Dashboard();

  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Dashboard'), Icon(DASHBOARD)],
    );
  }
}