import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        canvasColor: Colors.blue.shade200,
        //platform: TargetPlatform.fuchsia
      ),
      home: MaximumBid(title: 'Maximum Bid'),
    );
  }
}

class MaximumBid extends StatefulWidget {
  MaximumBid({Key? key, required this.title}) : super(key: key);
  final String title;

  @override

  _MaximumBidState createState() => _MaximumBidState();

}

class _MaximumBidState extends State<MaximumBid> {

  int _maxBid = 0;

  void _increaseMyMaxBid() {

    setState(() {
// Add $50 to my current bid

      _maxBid += 50;

    });

  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
      // Column is also a layout widget. It takes a list of children and
      // arranges them vertically. By default, it sizes itself to fit its
      // children horizontally, and tries to be as tall as its parent.
      //
      // Invoke "debug painting" (press "p" in the console, choose the
      // "Toggle Debug Paint" action from the Flutter Inspector in Android
      // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
      // to see the wireframe for each widget.
      //
      // Column has various properties to control how it sizes itself and
      // how it positions its children. Here we use mainAxisAlignment to
      // center the children vertically; the main axis here is the vertical
      // axis because Columns are vertical (the cross axis would be
      // horizontal).
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Text('My Maximum Bid: $_maxBid'),
        Text(
          '$_maxBid',
            style: Theme.of(context).textTheme.headline4,
      ),
      ],
    ),
    ),

      floatingActionButton: FloatingActionButton(

          onPressed:  _increaseMyMaxBid,
        tooltip: 'Increment',
        child: Icon(Icons.add),

        ),



    );

  }

}
