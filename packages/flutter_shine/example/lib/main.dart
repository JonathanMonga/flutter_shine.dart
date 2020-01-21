import 'package:flutter/material.dart';
import 'package:flutter_shine/flutter_shine.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shine'),
        ),
        body: Center(child: FlutterShine(
          builder: (BuildContext context, ShineShadow shineShadow) {
            final width = MediaQuery.of(context).size.width;
            final fontSize = width / 3.5;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Shine",
                  style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.white,
                      shadows: shineShadow.shadows),
                ),
                Divider(),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white, boxShadow: shineShadow.boxShadows),
                )
              ],
            );
          },
        )),
      ),
    );
  }
}
