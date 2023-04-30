import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  final LayerLink _layerLink = LayerLink();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CompositedTransformTarget(
              link: _layerLink,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20.0),
            Text('Follow me!'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CompositedTransformFollower(
          link: _layerLink,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
