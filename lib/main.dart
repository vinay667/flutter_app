import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() => runApp(MyHomePage());

class StaggerAnimation extends StatelessWidget {
//Search box animation code

  StaggerAnimation({Key key, this.controller})
      : width = Tween<double>(
          begin: 55.0,
          end: 300.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.125,
              0.250,
              curve: Curves.ease,
            ),
          ),
        ),
        borderRadius = BorderRadiusTween(
          begin: BorderRadius.circular(75.0),
          end: BorderRadius.circular(7.0),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.175,
              0.200,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Animation<double> controller;
  final Animation<double> width;
  final Animation<BorderRadius> borderRadius;

  // This function is called each time the controller "ticks" a new frame.
  // When it runs, all of the animation's values will have been
  // updated to reflect the controller's current value.
  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Container(
          width: width.value,
          height: 55,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius.value,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8.0,
                  offset: Offset(1.0, 1.0),
                  spreadRadius: 0.0)
            ],
          ),
          child: Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  decoration: const InputDecoration(
                      hintText: 'Enter Keyword',
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.only(left: 15, right: 15)),
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 17),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'images/search.png',
                        height: 22,
                        width: 22,
                      )))
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  double appbarSize = 460;
  ScrollController _controller22;
  String myTitle = "Hello Mariya";
  AnimationController _controller;
  double opacityValue = 1.0;
  double opacityValue2 = 1.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    _controller22 = ScrollController();

    _controller22.addListener(() {
      if (_controller22.offset > 400 || _controller22.offset <= 40) {
        if (myTitle.compareTo("Hello Maria") == 0) return;
        // opacityValue=1.0;
        opacityValue2 = 1.0;
        myTitle = "Hello Mariya";
        setState(() {});
      } else {
        if (myTitle.isEmpty) return;
        //opacityValue=0.0;
        opacityValue2 = 0.0;
        myTitle = "";
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      // await _controller.reverse().orCancel;       for making a reverse animation
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 3.0;
    return MaterialApp(
      home: Stack(
        children: <Widget>[
          CustomScrollView(
            controller: _controller22,
            slivers: <Widget>[
              //Toolbar code
              SliverAppBar(
                  expandedHeight: 460.0,
                  title: AnimatedOpacity(
                    opacity: opacityValue,
                    duration: Duration(milliseconds: 10),
                    child: Text(
                      myTitle,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'GilroySemibold',
                          color: MyColor.textColorBlue,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  backgroundColor: MyColor.whiteColor,
                  pinned: true,
                  leading: AnimatedOpacity(
                    opacity: opacityValue2,
                    duration: Duration(milliseconds: 50),
                    child: Container(
                      height: 39,
                        width: 37,
                        margin: EdgeInsets.only(left: 12, top: 6, bottom: 6),
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage("images/spanish_girl.jpg")))),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Image.asset(
                        'images/hamb.png',
                        width: 15,
                        height: 15,
                      ),
                      tooltip: 'Add new entry',
                      onPressed: () {
                        /* ... */
                      },
                    ),
                  ],

                  //The area which will be collapsed with the toolbar

                  flexibleSpace: new FlexibleSpaceBar(
                      background: Stack(
                        children: <Widget>[
                          Image.asset(
                            'images/top_final.png',
                            height: 420,
                            fit: BoxFit.fill,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(top: 100, left: 15),
                                child: Text(
                                  "What's your mood ?",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 30,
                                    fontFamily: 'GilroySemibold',
                                    color: MyColor.textColorBlue,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Get',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'GilroyLight',
                                        color: MyColor.textColorBlue,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Everything',
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontFamily: 'GilroySemibold',
                                              color: MyColor.textColorBlue,
                                              decoration: TextDecoration.none),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          'at Home',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'GilroyLight',
                                              decoration: TextDecoration.none,
                                              color: MyColor.textColorBlue),
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              width: 54.7,
                                              height: 54.7,
                                              decoration: new BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black26,
                                                      blurRadius: 8.0,
                                                      offset: Offset(1.0, 1.0),
                                                      spreadRadius: 0.0)
                                                ],
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                    'images/cash_in.png',
                                                    height: 26.7,
                                                    width: 22.7,
                                                  ))),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Cash In',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                            ),
                                          )
                                        ],
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              width: 54.7,
                                              height: 54.7,
                                              decoration: new BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black26,
                                                      blurRadius: 8.0,
                                                      offset: Offset(1.0, 1.0),
                                                      spreadRadius: 0.0)
                                                ],
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                    'images/grocery.png',
                                                    height: 25,
                                                    width: 26,
                                                  ))),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Grocery',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                            ),
                                          )
                                        ],
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              width: 54.7,
                                              height: 54.7,
                                              decoration: new BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black26,
                                                      blurRadius: 8.0,
                                                      offset: Offset(1.0, 1.0),
                                                      spreadRadius: 0.0)
                                                ],
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                    'images/transport.png',
                                                    height: 22,
                                                    width: 30.7,
                                                  ))),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Transport',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                            ),
                                          )
                                        ],
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              width: 54.7,
                                              height: 54.7,
                                              decoration: new BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black26,
                                                      blurRadius: 8.0,
                                                      offset: Offset(1.0, 1.0),
                                                      spreadRadius: 0.0)
                                                ],
                                              ),
                                              child: Center(
                                                  child: Image.asset(
                                                    'images/cycle.png',
                                                    height: 26,
                                                    width: 28.7,
                                                  ))),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Tricycle',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                            ),
                                          )
                                        ],
                                      ),
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 100),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: GestureDetector(
                                  onTap: () {
                                    _playAnimation();
                                  },
                                  child: Container(
                                    child:
                                    StaggerAnimation(controller: _controller.view),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text('Find your desire...',
                                      style: TextStyle(
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        color: MyColor.textColorgreySoft,
                                        fontFamily: 'GilroyLight',
                                      ))),
                            ],
                          ),
                        ],
                      ))),

              //Non collapsed area UI Code

              SliverToBoxAdapter(
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 560,
                        color: MyColor.whiteColor,
                        child: Column(children: <Widget>[
                          Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                'Explore Jexmovers',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: MyColor.textColorBlue,
                                    fontFamily: 'GilroySemibold',
                                    decoration: TextDecoration.none),
                              )),
                          Padding(padding: EdgeInsets.only(left: 15, right: 15)),

                          //First Horizonal List
                          Container(
                              padding: EdgeInsets.only(top: 15),
                              height: 120.0,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 0),
                                  child: ListView(
                                    padding: EdgeInsets.only(left: 15,right:5),
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(bottom: 10),
                                       child: Card(
                                         elevation:6,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10)),
                                         child: Container(
                                           width: 85.7,
                                           height:85.7,
                                           child: Column(
                                             children: <Widget>[
                                               Padding(
                                                 padding: EdgeInsets.only(top: 8),
                                                 child: Image.asset(
                                                   'images/del.png',
                                                   height: 47.3,
                                                   width: 59,
                                                 ),
                                               ),
                                               Padding(
                                                 padding: EdgeInsets.only(bottom: 5,top: 3),
                                                 child: Text(
                                                   'Delivery',
                                                   style: TextStyle(

                                                       fontWeight: FontWeight.normal,
                                                       fontSize: 15,
                                                       fontFamily: 'GilroySemibold',
                                                       color: MyColor.textColorCircle,
                                                       decoration: TextDecoration.none),
                                                 ),
                                               )
                                             ],
                                           ),
                                         ),
                                       ),

                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(bottom: 10),
                                       child: Card(
                                         elevation: 6,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10)),
                                         child: Container(
                                           padding: EdgeInsets.only(left: 0),
                                           width: 85.7,
                                           height:85.7,
                                           child: Column(
                                             children: <Widget>[
                                               Padding(
                                                 padding: EdgeInsets.only(top: 5),
                                                 child: Image.asset(
                                                   'images/milk_tea.png',
                                                   height: 47.3,
                                                   width: 59,                                                ),
                                               ),
                                               Padding(
                                                 padding: EdgeInsets.only(bottom: 5,top:6),
                                                 child: Text(
                                                   'Milk Tea',
                                                   style: TextStyle(
                                                       fontSize: 15,
                                                       fontFamily: 'GilroySemibold',
                                                       color: MyColor.textColorCircle,
                                                       decoration: TextDecoration.none),
                                                 ),
                                               )
                                             ],
                                           ),
                                         ),
                                       ),
                                     ),

                            /*  Padding(
                                padding: EdgeInsets.only(bottom: 10),

                              ),*/
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                       child:Card(
                                         elevation: 6,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10)),
                                         child: Container(
                                           width: 85.7,
                                           height:85.7,
                                           child: Column(
                                             children: <Widget>[
                                               Padding(
                                                 padding: EdgeInsets.only(top: 8),
                                                 child: Image.asset(
                                                   'images/rewards.png',
                                                   height: 47.3,
                                                   width: 59,
                                                 ),
                                               ),
                                               Padding(
                                                 padding: EdgeInsets.only(bottom: 5,top:3),
                                                 child: Text(
                                                   'Rewards',
                                                   style: TextStyle(
                                                       fontSize: 15,
                                                       fontFamily: 'GilroySemibold',
                                                       color: MyColor.textColorCircle,
                                                       decoration: TextDecoration.none),
                                                 ),
                                               )
                                             ],
                                           ),
                                         ),
                                       ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                       child: Card(
                                         elevation: 6,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10)),
                                         child: Container(
                                           width: 85.7,
                                           height: 85.7,
                                           child: Column(
                                             children: <Widget>[
                                               Padding(
                                                 padding: EdgeInsets.only(top: 8),
                                                 child: Image.asset(
                                                   'images/gifts.png',
                                                   height: 47.3,
                                                   width: 59,
                                                 ),
                                               ),
                                               Padding(
                                                 padding: EdgeInsets.only(bottom: 5,top:3),
                                                 child: Text(
                                                   'Gifts',
                                                   style: TextStyle(
                                                       fontSize: 15,
                                                       fontFamily: 'GilroySemibold',
                                                       color: MyColor.textColorCircle,
                                                       decoration: TextDecoration.none),
                                                 ),
                                               )
                                             ],
                                           ),
                                         ),
                                       ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                           child:Card(
                                             elevation:6,
                                             shape: RoundedRectangleBorder(
                                                 borderRadius: BorderRadius.circular(10)),
                                             child: Container(
                                               width: 85.7,
                                               height:85.7,
                                               child: Column(
                                                 children: <Widget>[
                                                   Padding(
                                                     padding: EdgeInsets.only(top: 10),
                                                     child: Image.asset(
                                                       'images/food.png',
                                                       height: 37,
                                                       width: 61.7,
                                                     ),
                                                   ),
                                                   Padding(
                                                     padding: EdgeInsets.only(bottom: 5,top:10),
                                                     child: Text(
                                                       'Food',
                                                       style: TextStyle(
                                                           fontSize: 15,
                                                           fontFamily: 'GilroySemibold',
                                                           color: MyColor.textColorCircle,
                                                           decoration: TextDecoration.none),
                                                     ),
                                                   )
                                                 ],
                                               ),
                                             ),
                                           ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child:Card(
                                          elevation:6,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Container(
                                            width: 85.7,
                                            height:85.7,
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(top: 10),
                                                  child: Image.asset(
                                                    'images/pay.png',
                                                    height: 37,
                                                    width: 61.7,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 5,top:10),
                                                  child: Text(
                                                    'Pay',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'GilroySemibold',
                                                        color: MyColor.textColorCircle,
                                                        decoration: TextDecoration.none),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),





                                    ],
                                  )


                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Nearby Restaurants',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: MyColor.textColorBlue,
                                        fontFamily: 'GilroySemibold',
                                        decoration: TextDecoration.none),
                                  )),
                              Container(
                                height:31,
                                width:105,
                                padding: EdgeInsets.only(right: 15),
                                child: FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: MyColor.btnBorderColor)),
                                  color: MyColor.greyLightColor,
                                  textColor: MyColor.darkBlack,
                                  padding: EdgeInsets.all(8.0),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 7, right: 7),
                                    child: Text(
                                      "SHOW All".toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'GilroyBold',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),

                          //Second Horizontal List
                          Container(
                              padding: EdgeInsets.only(top: 10),
                              height: 290,
                              child: new ListView(
                                padding: EdgeInsets.only(left: 15),
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 22),
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Container(
                                            height: 230,
                                            width: 260,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.only(
                                                  left: 18, right: 10),
                                              width: 260,
                                              height: 130,
                                              child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(15.0),
                                                  child: Image.asset(
                                                      'images/food_1.jpeg',
                                                      fit: BoxFit.fitWidth))),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(top: 20, left: 18),
                                            child: Text(
                                              'Limoncello',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                              width: 260,
                                              padding: EdgeInsets.only(
                                                  left: 18, top: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'LUNCH SETS',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'GilroyLight',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        right: 5,
                                                        bottom: 5),
                                                    child: Text(
                                                      '.',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'GilroyLight',
                                                          color: MyColor.textSoft,
                                                          decoration:
                                                          TextDecoration.none),
                                                    ),
                                                  ),
                                                  Text(
                                                    'SANDWICHES',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'GilroyLight',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              )),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(left: 18, top: 10),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: MyColor.iconColor,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    '4.5',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily:
                                                        'GilroySemibold',
                                                        color:
                                                        MyColor.textColorCircle,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 22),
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Container(
                                            height: 230,
                                            width: 260,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.only(
                                                  left: 18, right: 10),
                                              width: 260,
                                              height: 130,
                                              child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(15.0),
                                                  child: Image.asset(
                                                      'images/food_2.jpg',
                                                      fit: BoxFit.fitWidth))),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(top: 20, left: 18),
                                            child: Text(
                                              'Limoncello',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                              width: 260,
                                              padding: EdgeInsets.only(
                                                  left: 18, top: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'LUNCH SETS',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.normal,
                                                        fontFamily:
                                                        'fonts/gile.otf',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        right: 5,
                                                        bottom: 5),
                                                    child: Text(
                                                      '.',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'GilroyLight',
                                                          color: MyColor.textSoft,
                                                          decoration:
                                                          TextDecoration.none),
                                                    ),
                                                  ),
                                                  Text(
                                                    'SANDWICHES',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'GilroyLight',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              )),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(left: 18, top: 10),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: MyColor.iconColor,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    '4.5',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily:
                                                        'GilroySemibold',
                                                        color:
                                                        MyColor.textColorCircle,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 22),
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Container(
                                            height: 230,
                                            width: 260,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.only(
                                                  left: 18, right: 10),
                                              width: 260,
                                              height: 130,
                                              child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(15.0),
                                                  child: Image.asset(
                                                      'images/food_3.jpg',
                                                      fit: BoxFit.fitWidth))),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(top: 20, left: 18),
                                            child: Text(
                                              'Limoncello',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                              width: 260,
                                              padding: EdgeInsets.only(
                                                  left: 18, top: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'LUNCH SETS',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.normal,
                                                        fontFamily:
                                                        'fonts/gile.otf',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        right: 5,
                                                        bottom: 5),
                                                    child: Text(
                                                      '.',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'GilroyLight',
                                                          color: MyColor.textSoft,
                                                          decoration:
                                                          TextDecoration.none),
                                                    ),
                                                  ),
                                                  Text(
                                                    'SANDWICHES',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'GilroyLight',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              )),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(left: 18, top: 10),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: MyColor.iconColor,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    '4.5',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily:
                                                        'GilroySemibold',
                                                        color:
                                                        MyColor.textColorCircle,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 22),
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Container(
                                            height: 230,
                                            width: 260,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.only(
                                                  left: 18, right: 10),
                                              width: 260,
                                              height: 130,
                                              child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(15.0),
                                                  child: Image.asset(
                                                      'images/food_4.jpg',
                                                      fit: BoxFit.fitWidth))),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(top: 20, left: 18),
                                            child: Text(
                                              'Limoncello',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'GilroySemibold',
                                                  color: MyColor.textColorCircle,
                                                  decoration: TextDecoration.none),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                              width: 260,
                                              padding: EdgeInsets.only(
                                                  left: 18, top: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'LUNCH SETS',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.normal,
                                                        fontFamily:
                                                        'fonts/gile.otf',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        right: 5,
                                                        bottom: 5),
                                                    child: Text(
                                                      '.',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'GilroyLight',
                                                          color: MyColor.textSoft,
                                                          decoration:
                                                          TextDecoration.none),
                                                    ),
                                                  ),
                                                  Text(
                                                    'SANDWICHES',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'GilroyLight',
                                                        color: MyColor.textSoft,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              )),
                                          Container(
                                            width: 260,
                                            padding:
                                            EdgeInsets.only(left: 18, top: 10),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: MyColor.iconColor,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    '4.5',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily:
                                                        'GilroySemibold',
                                                        color:
                                                        MyColor.textColorCircle,
                                                        decoration:
                                                        TextDecoration.none),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                          ),
                        ])),

                    //FloatingButton Code
                  
                  ],
                ),
              ),
            ],
          ),

          Positioned(
              right: 20,
              bottom: 30,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 70,
                    height: 70,
                    child: FloatingActionButton(
                      child: Image.asset('images/cart.png',
                          width: 36, height: 24),
                      backgroundColor: MyColor.pinkColor,
                      onPressed: () {},
                    ),
                  ))),

        ],


      )


    );
  }
}




