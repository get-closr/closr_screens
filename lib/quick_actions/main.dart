import 'package:closr_screens/wave_slider/wave_slider.dart';
import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
// import './wave_slider/splash.dart';

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
  void initState() {
    super.initState();
    final QuickActions quickActions = const QuickActions();
    quickActions.initialize((String shortbutType) {
      if (shortbutType == 'actions_decrement') {
        print('The user tapped on the "decrement" action');
        main();
      } else {
        print('The user tapped on the "increment" action');
      }
    });

    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'action_decrement', localizedTitle: 'decrement', icon: 'minus'),
      const ShortcutItem(
          type: 'action_increment', localizedTitle: 'increment', icon: 'plus'),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plugin example app'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(
                child: Text('On home screen, long press the icon to '
                    'get Main view action. Tapping on that action should print '
                    'a message to the log.'),
              ),
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
              // WaveSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
