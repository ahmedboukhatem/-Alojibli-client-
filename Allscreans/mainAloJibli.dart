

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_alojibli/Allscreans/Description.dart';
import 'package:user_alojibli/Allscreans/Mapp.dart';



class firstpage4 extends StatelessWidget {
  static const String idScreen = "MainAlojibl";
  static double screenHeight=0;
  int count =0;
  ScrollController _scrollController = ScrollController(initialScrollOffset: 1.0, keepScrollOffset: true,debugLabel: "ahmed");
  @override
  Widget build(BuildContext context) {
    var deviceData=MediaQuery.of(context).size;

    screenHeight = deviceData.height;
    return Scaffold(

      body: Container(

        color: const Color(0xffff0019),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_basket_outlined),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  Container(
                      width: 125.0,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.info),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                            onPressed: () {},
                          )
                        ],
                      ))
                ],
              ),

            ),
            SizedBox(height: screenHeight*0.07,),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Text('Alo_JibLi',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight*0.04,)),
                  SizedBox(width: 10.0),
                  Text('Delivery',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: screenHeight*0.04,))
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.10,),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 181.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(

                primary: false,
                controller: _scrollController,

                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: screenHeight*0.07,),
                      child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height - 200.0,
                          child: Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            showTrackOnHover: true,
                             hoverThickness: 30,

                            interactive: true,
                            child: ListView(



                                children: [


                               InkWell(
                       onTap: () {
                             print("ahmed");
                             Navigator.pushNamedAndRemoveUntil(context, Mapp.idScreen , (route) => false);
                                  },
                              child: _buildFoodItem('images/plate2.png', 'FOOD', 'choise this for food '),),
                            InkWell(
                            onTap: () {
                               print("ahmed2");

                                   },
                        child: _buildFoodItem('images/epsr.png', 'Epiceries', 'choise this for Epiceries'),),
                            InkWell(
                            onTap: () {
                               print("ahmed2");

                                   },
                        child: _buildFoodItem('images/epsr.png', 'Epiceries', 'choise this for Epiceries'),),
                            InkWell(
                            onTap: () {
                               print("ahmed2");

                                   },
                        child: _buildFoodItem('images/epsr.png', 'Epiceries', 'choise this for Epiceries'),),
                            InkWell(
                            onTap: () {
                               print("ahmed2");

                                   },
                        child: _buildFoodItem('images/epsr.png', 'Epiceries', 'choise this for Epiceries'),),
                            InkWell(
                            onTap: () {
                               print("ahmed2");

                                   },
                        child: _buildFoodItem('images/epsr.png', 'Epiceries', 'choise this for Epiceries'),),



                            InkWell(
                         onTap: () {
                             print("ahmed3");

                            },

                            child:  _buildFoodItem('images/other.png', 'Other', 'i dont know what am ....'),),
    InkWell(
    onTap: () {
    print("ahmed4");

    },

    child:_buildFoodItem('images/map.png', 'Special Service', ' Special Delivery '),)
                            ]),
                          ))),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {

    return Padding(

        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),


            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath,
                              child: Image(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: 75.0,
                                  width: 75.0
                              )
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    foodName,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    price,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_right),
                    color: Colors.amber,
                    onPressed: () {}
                )
              ],
            )
        );
  }

}

