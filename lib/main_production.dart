import 'package:environment_config_project/config/environment.dart';
import 'package:environment_config_project/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  EnvironmentConfig.environmentBuild = Environments.PRODUCTION;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Environment Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}
