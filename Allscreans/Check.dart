import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:user_alojibli/Allscreans/mainAloJibli.dart';

import '../main.dart';
import 'mainscrean.dart';



class CheckScreen extends StatefulWidget {
  static String routeName="/checkscreen";
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  Future<void> check() async {
    print(auth.currentUser!.uid);
    await userRef.child(auth.currentUser!.uid).once().then((DataSnapshot snapshot) {
      if(snapshot.value["firstuse"]==true){
        Navigator.pushNamedAndRemoveUntil(context, MainScrean.idScreen, (route) => false);
      }
      else        Navigator.pushNamedAndRemoveUntil(context, firstpage4.idScreen, (route) => false);

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Loading",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),

          Center(
            child:SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                color: const Color(0xffff0019),
              ),),
          )
      ],
      ),),
    ),);
  }
}
