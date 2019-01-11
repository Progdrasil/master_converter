import 'package:flutter/material.dart';

const List<String> units= ['mm', 'cm', 'm', 'km', 'in', 'ft', 'yard', 'mile'];

class HomePage extends StatelessWidget {
  final String title;
  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Container(
        child: new ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemExtent: 50.0,
          itemBuilder: (BuildContext ctx, int index) {
            return new ListTile(title: new Text('${units[index]}'));
          },
          itemCount: units.length,
        )
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => print('pressed!'),
        child: new Icon(Icons.add),
      ),
    );
  }
}