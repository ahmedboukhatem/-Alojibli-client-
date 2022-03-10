import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_alojibli/Allscreans/Description.dart';
import 'package:user_alojibli/Allscreans/rating.dart';
class Mapp extends StatefulWidget {
  static const String idScreen = "Mapp";


  @override
  _MappState createState() => _MappState();
}

class _MappState extends State<Mapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child:Column(
            children: [
              Text("Menu"),
              RaisedButton(
                  onPressed: () {
                  //  Navigator.pushNamedAndRemoveUntil(context, Description.idScreen , (route) => false);
          showCupertinoModalPopup( barrierDismissible: false,  context: context, builder: (builder)=>PopUp());

                  },
                  color: const Color(0xffff0019),
                  textColor: Colors.white,
                  child: Container(
                    height: 48.0,
                    width: 300,
                    child: Center(
                      child: Text(
                        'descreption',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 17,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )),

            ],


          ),


        ),
      ),
    );
  }late int _rating=0;
  Widget PopUp(){

    return SingleChildScrollView(
      child: Card( color: Colors.transparent,


        margin:EdgeInsets.only(left: 5,right: 5,bottom: 100),
        child: Container(
          height:250,
          decoration: BoxDecoration( color: Colors.white,

            borderRadius: BorderRadius.all( Radius.circular(20.0))),
          child: Center(

            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10 ,bottom: 0),
              child: Column(
                children: [
                  SizedBox(height: 30,),


                  Text(
                    'Rate Me ',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 30,
                      color: Colors.amber,
                      letterSpacing: -0.39,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Rating((rating) {
                          setState(() {
                            _rating = rating;
                            print(_rating);
                          });
                        }, 5),
                        SizedBox(
                            height: 20,
                            child: (_rating != null && _rating != 0)
                                ? Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("You selected $_rating rating",
                                    style: TextStyle(fontSize: 18)),
                                  ],
                                )
                                : SizedBox.shrink())
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(
                      onPressed: () {
                        if(_rating>3){
                          // Do something like updating SharedPreferences or User Settings etc.
                          Navigator.of(context).pop();
                        }
                      },
                      color: const Color(0xffff0019),
                      textColor: Colors.white,
                      child: Container(
                        height: 48.0,
                        width: 200,
                        child: Center(
                          child: Text(
                            'Done',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 17,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),


                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
  /*Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(context: context,
        builder: (context){


            return AlertDialog(
              content: Column(
                children: [
                  Text(
                    'Rate Me ',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 30,
                      color: Colors.amber,
                      letterSpacing: -0.39,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),



                  Center(
                    child: Column(

                      children: [
                        Row(  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Rating((rating) {
                              setState(() {
                                _rating = rating;
                                print(_rating);
                              });
                            }, 5),
                          ],
                        ),
                        SizedBox(
                            height: 20,
                            child: (_rating != null && _rating != 0)
                                ? Text("You selected $_rating rating",
                                style: TextStyle(fontSize: 18))
                                : SizedBox.shrink())
                      ],
                    ),
                  ),




                ],
              ),
             actions: <Widget>[
               RaisedButton(
                   onPressed: () {
                     if(_rating>3){
                       // Do something like updating SharedPreferences or User Settings etc.
                       Navigator.of(context).pop();
                     }
                   },
                   color: const Color(0xffff0019),
                   textColor: Colors.white,
                   child: Container(
                     height: 48.0,
                     width: 200,
                     child: Center(
                       child: Text(
                         'Done',
                         style: TextStyle(
                           fontFamily: 'Metropolis',
                           fontSize: 17,
                           color: const Color(0xffffffff),
                           fontWeight: FontWeight.w700,
                         ),
                         textAlign: TextAlign.center,
                       ),
                     ),
                   ),
                   shape: new RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(25),
                   )),

             ],

            );
        });
  }*/
}
