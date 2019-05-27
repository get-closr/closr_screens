import 'package:flutter/material.dart';


class FloatingActionButtonDemo extends StatefulWidget {
  @override
  _FloatingActionButtonDemoState createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  FloatingActionButtonLocation floatingActionButtonLocation =
      FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAB"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SafeArea(
          bottom: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BottomTabItem(
                  icon: Icons.home,
                  title: "Center Docked",
                  floatingActionButtonDemoState: this,
                ),
                BottomTabItem(
                  icon: Icons.list,
                  title: "Center Float",
                  floatingActionButtonDemoState: this,
                ),
                BottomTabItem(
                  icon: Icons.help,
                  title: "End Float",
                  floatingActionButtonDemoState: this,
                ),
                BottomTabItem(
                  icon: Icons.access_alarms,
                  title: "End Docked",
                  floatingActionButtonDemoState: this,
                ),
              ],
            ),
          ),
        ),
        color: Colors.orangeAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {},
      ),
    );
  }

  void updateState(FloatingActionButtonLocation location) {
    setState(() {
      floatingActionButtonLocation = location;
    });
  }
}

class BottomTabItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final _FloatingActionButtonDemoState floatingActionButtonDemoState;

  const BottomTabItem(
      {@required this.icon,
      @required this.title,
      @required this.floatingActionButtonDemoState});

  updateState(_FloatingActionButtonDemoState floatingActionButtonDemoState,
    FloatingActionButtonLocation location) {
  floatingActionButtonDemoState.updateState(location);
}


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (title == "Center Docked") {
          updateState(floatingActionButtonDemoState,
              FloatingActionButtonLocation.centerDocked);
        } else if (title == "Center Float") {
          updateState(floatingActionButtonDemoState,
              FloatingActionButtonLocation.endFloat);
        } else {
          updateState(floatingActionButtonDemoState,
              FloatingActionButtonLocation.endDocked);
        }
      },
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
