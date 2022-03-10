import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:user_alojibli/Allscreans/Description.dart';
import 'package:user_alojibli/Allscreans/Ebrq.dart';
import 'package:user_alojibli/Allscreans/LoginScreen.dart';
import 'package:user_alojibli/Allscreans/MenuEpsr.dart';
import 'package:user_alojibli/Allscreans/MenuPage.dart';
import 'package:user_alojibli/Allscreans/Tosts.dart';
import 'package:user_alojibli/Allscreans/mainAloJibli.dart';
import 'package:user_alojibli/Allscreans/rating.dart';
import 'Allscreans/Check.dart';
import 'Allscreans/Home.dart';
import 'Allscreans/Registry.dart';
import 'Allscreans/mainscrean.dart';
import 'Allscreans/phoneVRF.dart';
import 'Allscreans/Mapp.dart';

void main()async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const MyApp());
}
DatabaseReference userRef = FirebaseDatabase.instance.reference().child("users");
FirebaseAuth auth = FirebaseAuth.instance;
class MyApp extends StatelessWidget {
  static const String idScreen = "All";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:AbrQ(),
 // home: FirebaseAuth.instance.currentUser == null
     // ? LoginScreen()
     //  : CheckScreen(),
      routes: {

        MainScrean.idScreen:(context)=>MainScrean(),
        LoginPage.idScreen:(context)=>LoginPage(),
        LoginScreen.idScreen:(context)=>LoginScreen(),
        PHone.idScreen:(context)=>PHone(),
        Home.idScreen:(context)=>Home(),
        firstpage4.idScreen:(context)=>firstpage4(),
        Tosts.idScreen:(context)=>Tosts(),
        CheckScreen.routeName:(ctx)=> CheckScreen(),
        Description.idScreen:(context)=> Description(),
        Mapp.idScreen:(context)=> Mapp(),
        MenuEpsr.idScreen:(context)=> MenuEpsr(),
        MenuPage.idScreen:(context)=> MenuPage(),
       },
    );
  }
}
