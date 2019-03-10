import 'package:closr_screens/wave_slider.dart';
import 'package:flutter/material.dart';
import 'splash.dart';

void main() => runApp(MaterialApp(
      home: App(),
      debugShowCheckedModeBanner: false,
    ));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Splash(
              //   child: Container(
              //     width: 200,
              //     height: 200,
              //     color: Colors.blue,
              //     child: Center(
              //       child: Text("Click me Please"),
              //     ),
              //   ),
              //   onTap: () {
              //     print('tap');
              //   },
              // ),
              // Splash(
              //   child: Icon(Icons.close),
              //   onTap: () {},
              // ),
              WaveSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
