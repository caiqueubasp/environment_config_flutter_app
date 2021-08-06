import 'package:environment_config_project/config/environment.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myImage = EnvironmentConfig.urlsConfig();
  var myEnvironment = "${EnvironmentConfig.environmentBuild}";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 40, bottom: 40),
                alignment: Alignment.center,
                child: Text(
                  myEnvironment,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                color: Colors.blue[200],
                child: Container(
                  child: Image.network(myImage),
                ),
              ),
            ],
          ),
        ));
  }
}
