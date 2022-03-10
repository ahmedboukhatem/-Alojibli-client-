import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../main.dart';

import 'LoginScreen.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String idScreen = "Home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
                '---  HOME  ---',
                style: TextStyle(
                  fontFamily: 'beIN',
                  fontSize: 50,
                  color: const Color(0xffffbf00),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),



              InkWell(

                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.idScreen, (route) => false);
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
                      Navigator.pushNamedAndRemoveUntil(
                          context, LoginScreen.idScreen, (route) => false);
                    },
                    color: const Color(0xffff0019),
                    textColor: Colors.white,
                    child: Container(
                      height: 40.0,
                      width: 150,
                      child: Center(
                        child: Text(
                          'Back',
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
            FloatingActionButton(
                onPressed: ()async{
                  await auth.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Icon(Icons.logout),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
