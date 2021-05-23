import 'package:flutter/material.dart';
import 'package:painmanagement/HealthCare_Provider_Form.dart';
import 'package:painmanagement/Empty.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTabIndex=0;
  int _counter = 0;
  List<StatefulWidget> tabs=[
    HealthCare_Provider_Form(),
  ];
  onTapped(int index){
    setState(() {
      currentTabIndex = index;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: GestureDetector(
            onTap: (){/*"Write some thing later"*/},
            child:Icon(
              Icons.menu,
            )
        ),
      ),
      body: Center(
        child: tabs[currentTabIndex]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "HealthCare Provider",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Patient List"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: " Form Responses"
          )
        ],
      ),
    );
  }
}
