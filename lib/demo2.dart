import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

void main() => runApp(DemoMyHomePage());

class DemoMyHomePage extends StatefulWidget {
  @override
  Demo_MyHomePageState createState() => Demo_MyHomePageState();
}

class Demo_MyHomePageState extends State<DemoMyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsing Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset(
                    "images/top3.png",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }
}
