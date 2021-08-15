


import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:user_alojibli/Allscreans/mainAloJibli.dart';


import 'Registry.dart';


class PHone extends StatefulWidget {

  static const String idScreen = "Phone";
  @override
  _PHoneState createState() => _PHoneState();
}

class _PHoneState extends State<PHone> {





  @override
  Widget build(BuildContext context) {


    final BoxDecoration pinPutDecoration =BoxDecoration(
      color:  const Color(0xffeceae6),
      borderRadius: BorderRadius.circular(5.0),
      border: Border.all(
          color: const Color(0xfff6b941),width: 0.5
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Image(image: AssetImage('images/AloJibli1.png'),
                height: 200,
                width: 200,

                alignment: Alignment.center,
              ),


              Text(
                '--- Write the code ---',
                style: TextStyle(
                  fontFamily: 'beIN',
                  fontSize: 20,
                  color: const Color(0xffffbf00),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),


              Padding(
                padding: const EdgeInsets.all(30.0),

                child: PinPut(
                  fieldsCount: 6,


                  textStyle: const TextStyle(fontSize: 25.0,  color: Colors.black54),


                  eachFieldWidth: 45.0,
                  eachFieldHeight: 45.0,
                  focusNode:FocusNode(),


                  submittedFieldDecoration:  pinPutDecoration,
                  selectedFieldDecoration: pinPutDecoration,

                  followingFieldDecoration: pinPutDecoration,

                  pinAnimationType: PinAnimationType.fade,
                  onSubmit: (pin) async {

                  },
                ),
              ),
              InkWell(

                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginPage.idScreen, (route) => false);
                },
                child: Text(" Resend Code", style: TextStyle(
                  decoration: TextDecoration.underline,

                  fontSize: 16,
                  color: Colors.blue,

                  letterSpacing: 0.4,
                  height: 2,
                ),),
              ),

          Padding(
            padding: const EdgeInsets.all(50.0),
            child:

            RaisedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, firstpage4.idScreen , (route) => false);
                  },
                  color: const Color(0xffff0019),
                  textColor: Colors.white,
                  child: Container(
                    height: 40.0,
                    width: 150,
                    child: Center(
                      child: Text(
                        'verify',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 16,
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
          ),




            ],
          ),
        ),
      ),
    );
  }




  }

