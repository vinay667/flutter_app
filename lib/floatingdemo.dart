import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'demo2.dart';

void main() => runApp(MyHomePage22());

class MyHomePage22 extends StatefulWidget {
  @override
  _MyHomePageState22 createState() => _MyHomePageState22();
}

class _MyHomePageState22 extends State<MyHomePage22> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //    type: MaterialType.transparency,
        home: new ListView(
          children: <Widget>[
            Container(
                color: MyColor.greyLightColor,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          color: MyColor.greyLightColor,
                          width: double.infinity,
                          height: 420,
                          child: Image.asset(
                            'images/top3.png',
                            height: 360,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                            child: Column(
                              children: <Widget>[

                                Padding(
                                  padding:
                                  EdgeInsets.only(top: 20, left: 15, right: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: new AssetImage(
                                                      "images/spanish_girl.jpg")))),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Hello,Maria',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'GilroySemibold',
                                              color: MyColor.textColorBlue,
                                              decoration: TextDecoration.none),
                                        ),
                                      ),
                                      Expanded(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Image.asset(
                                              'images/hamb.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(top: 20, left: 15),
                                  child: Text(
                                    "What's your mood ?",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 30,
                                      fontFamily:'GilroySemibold',
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
                                  padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                                width: 60.0,
                                                height: 60.0,
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
                                                      height: 30,
                                                      width: 30,
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
                                                width: 60.0,
                                                height: 60.0,
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
                                                      height: 30,
                                                      width: 30,
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
                                                width: 60.0,
                                                height: 60.0,
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
                                                      height: 30,
                                                      width: 30,
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
                                                width: 60.0,
                                                height: 60.0,
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
                                                      height: 30,
                                                      width: 30,
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
                                  padding: EdgeInsets.only(top: 105),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      width: 60.0,
                                      height: 60.0,
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
                                            'images/search.png',
                                            height: 25,
                                            width: 25,
                                          ))),
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
                                Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(left: 15, top: 35),
                                    child: Text(
                                      'Explore Jexmovers',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: MyColor.textColorBlue,
                                          fontFamily: 'GilroySemibold',
                                          decoration: TextDecoration.none),
                                    )),
                                Padding(padding: EdgeInsets.only(left: 15, right: 15)),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    height: 130.0,
                                    child: new ListView(
                                      padding: EdgeInsets.only(left: 15),
                                      scrollDirection: Axis.horizontal,
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Container(
                                            width: 110,
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10),
                                                  child: Image.asset(
                                                    'images/del.png',
                                                    height: 65,
                                                    width: 65,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 9),
                                                  child: Text('Delivery',
                                                    style: TextStyle(fontWeight: FontWeight.normal,
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
                                        Card(
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Container(
                                            width: 110,
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10),
                                                  child: Image.asset(
                                                    'images/milk_tea.png',
                                                    height: 65,
                                                    width: 65,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 9),
                                                  child: Text('Milk Tea',
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
                                        Card(
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Container(
                                            width: 110,
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10),
                                                  child: Image.asset(
                                                    'images/food.png',
                                                    height: 65,
                                                    width: 65,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 9),
                                                  child: Text('Food', style: TextStyle(
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
                                        Card(
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Container(
                                            width: 110,
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10),
                                                  child: Image.asset(
                                                    'images/pay.png',
                                                    height: 65,
                                                    width: 65,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: 9),
                                                  child: Text('Pay', style: TextStyle(
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

                                      ],
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
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
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: FlatButton(
                                        shape: new RoundedRectangleBorder(
                                            borderRadius:
                                            new BorderRadius.circular(10.0),
                                            side: BorderSide(
                                                color: MyColor.btnBorderColor)),
                                        color: MyColor.greyLightColor,
                                        textColor: MyColor.darkBlack,
                                        padding: EdgeInsets.all(8.0),
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => DemoMyHomePage()));

                                        },
                                        child:Padding(
                                          padding: EdgeInsets.only(left:7,right:7),
                                          child: Text(
                                            "SHOW All".toUpperCase(),
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontFamily: 'GilroySemibold',
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


                                Container(

                                    padding: EdgeInsets.only(top:10),
                                    height:290,
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
                                                    borderRadius: BorderRadius.circular(10)),
                                                child: Container(
                                                  height: 230,
                                                  width: 260,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Container(
                                                    padding:
                                                    EdgeInsets.only(left: 18, right: 10),
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
                                                  padding: EdgeInsets.only(top: 20, left: 18),
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
                                                    padding: EdgeInsets.only(left: 18, top: 10),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          'LUNCH SETS',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'GilroyLight',
                                                              color: MyColor.textSoft,
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              left: 5, right: 5, bottom: 5),
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
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                  width: 260,
                                                  padding: EdgeInsets.only(left: 18, top: 10),
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
                                                              fontFamily: 'GilroySemibold',
                                                              color: MyColor.textColorCircle,
                                                              decoration: TextDecoration.none),
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
                                                    borderRadius: BorderRadius.circular(10)),
                                                child: Container(
                                                  height: 230,
                                                  width: 260,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Container(
                                                    padding:
                                                    EdgeInsets.only(left: 18, right: 10),
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
                                                  padding: EdgeInsets.only(top: 20, left: 18),
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
                                                    padding: EdgeInsets.only(left: 18, top: 10),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          'LUNCH SETS',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.normal,
                                                              fontFamily: 'fonts/gile.otf',
                                                              color: MyColor.textSoft,
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              left: 5, right: 5, bottom: 5),
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
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                  width: 260,
                                                  padding: EdgeInsets.only(left: 18, top: 10),
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
                                                              fontFamily: 'GilroySemibold',
                                                              color: MyColor.textColorCircle,
                                                              decoration: TextDecoration.none),
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
                                                    borderRadius: BorderRadius.circular(10)),
                                                child: Container(
                                                  height: 230,
                                                  width: 260,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Container(
                                                    padding:
                                                    EdgeInsets.only(left: 18, right: 10),
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
                                                  padding: EdgeInsets.only(top: 20, left: 18),
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
                                                    padding: EdgeInsets.only(left: 18, top: 10),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          'LUNCH SETS',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.normal,
                                                              fontFamily: 'fonts/gile.otf',
                                                              color: MyColor.textSoft,
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              left: 5, right: 5, bottom: 5),
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
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                  width: 260,
                                                  padding: EdgeInsets.only(left: 18, top: 10),
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
                                                              fontFamily: 'GilroySemibold',
                                                              color: MyColor.textColorCircle,
                                                              decoration: TextDecoration.none),
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
                                                    borderRadius: BorderRadius.circular(10)),
                                                child: Container(
                                                  height: 230,
                                                  width: 260,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Container(
                                                    padding:
                                                    EdgeInsets.only(left: 18, right: 10),
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
                                                  padding: EdgeInsets.only(top: 20, left: 18),
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
                                                    padding: EdgeInsets.only(left: 18, top: 10),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          'LUNCH SETS',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.normal,
                                                              fontFamily: 'fonts/gile.otf',
                                                              color: MyColor.textSoft,
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              left: 5, right: 5, bottom: 5),
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
                                                              decoration: TextDecoration.none),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                  width: 260,
                                                  padding: EdgeInsets.only(left: 18, top: 10),
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
                                                              fontFamily: 'GilroySemibold',
                                                              color: MyColor.textColorCircle,
                                                              decoration: TextDecoration.none),
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









                                /* Container(
                         margin: EdgeInsets.symmetric(horizontal: 5.0),
                         color: Colors.blue,
                         child: CarouselSlider(
                           options:CarouselOptions(height: 110.0,
                             enableInfiniteScroll: false,
                             enlargeCenterPage: true,
                             viewportFraction: 0.8
                           ),
                           items: [1,2,3,4,5].map((i) {
                             return Builder(
                               builder: (BuildContext context) {
                                 return Padding(
                                   padding: EdgeInsets.only(left: 5),
                                   child: Card(
                                     elevation: 3,
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(10)),
                                     child: Container(
                                       width: 100,
                                       child: Column(
                                         children: <Widget>[
                                           Padding(
                                             padding:
                                             EdgeInsets.only(top: 10, bottom: 7),
                                             child: Image.asset(
                                               'images/rest3.png',
                                               height: 50,
                                               width: 50,
                                             ),
                                           ),
                                           Padding(
                                             padding: EdgeInsets.only(bottom: 10),
                                             child: Text('Restaurant 3'),
                                           )
                                         ],
                                       ),
                                     ),
                                   ),
                                 );




                                 */ /*return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        color: Colors.blue
                                    ),
                                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                                );*/ /*
                               },
                             );
                           }).toList(),
                         ),

                       ),*/

                                Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                )
                              ],
                            )),

                        Positioned(
                            right: 20,
                            bottom: 30,
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child:Container(
                                  width:70,
                                  height:70,
                                  child: FloatingActionButton(
                                    child: Image.asset('images/cart.png',width: 30,height:30),
                                    backgroundColor: MyColor.pinkColor,
                                    onPressed: () {

                                      Navigator.push(context, MaterialPageRoute(builder: (context) => DemoMyHomePage()));


                                    },
                                  ),
                                )
                            )),



                        /*  Center(
                        child: const Text('Press the button below!')
                    ),
                     FloatingActionButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: Icon(Icons.navigation),
                      backgroundColor: Colors.green,
                    ),*/
                      ],
                    ),
                  ],
                ))
          ],
        ));
  }
}
