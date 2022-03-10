import 'package:adobe_xd/pinned.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:user_alojibli/Allscreans/LoginScreen.dart';
import 'package:user_alojibli/main.dart';

import 'mainscrean.dart';

class LoginPage extends StatefulWidget {
  static const String idScreen = "Registry";



  @override
  _LoginPageState createState() => _LoginPageState();
// TODO: implement createState

}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameTextEditingController =TextEditingController();
  TextEditingController emailTextEditingController =TextEditingController();
  TextEditingController phoneTextEditingController =TextEditingController();
  TextEditingController passwordTextEditingController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
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
               height: 100,
               width: 150,

               alignment: Alignment.center,
             ), //LOGO
              SizedBox(width: 20),
              Container(
                child:Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontFamily: 'A-bad kh@t',
                    fontSize: 20,
                    color: Colors.amber,
                    letterSpacing: 0.4,
                    height: 2,
                  ),

                  textAlign: TextAlign.center,
                ),
              ),//SIngin
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameTextEditingController,

                      keyboardType: TextInputType.text,

                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),

                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xcf7c7d7e),width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.amber,width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        
                        prefixIcon: Icon(Icons.account_box),
                        fillColor: Colors.white24,

                        filled: true,
                      ),
                      style: TextStyle(fontSize: 14),
                    ), //name
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:const Color(0xcf7c7d7e),width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.amber,width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(Icons.email),
                        fillColor:const Color(0xA6A6A6),
                        filled: true,
                      ),
                      style: TextStyle(fontSize: 14),
                    ),//Email
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: phoneTextEditingController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone",
                        labelStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:const Color(0xcf7c7d7e),width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.amber,width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(Icons.phone),
                        fillColor:const Color(0xA6A6A6),
                        filled: true,
                      ),
                      style: TextStyle(fontSize: 14),
                    ),//phone
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:const Color(0xcf7c7d7e),width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.amber,width: 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                        prefixIcon: Icon(Icons.password_outlined),
                        fillColor:const Color(0xA6A6A6),
                        filled: true,
                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                    InkWell(

                      onTap: () {

                        Navigator.pushNamedAndRemoveUntil(context, LoginScreen.idScreen , (route) => false);
                      },

                      child:
                      Align(
                        alignment: Alignment.topRight,
                        child: Text("i have an account",style: TextStyle(
                          decoration: TextDecoration.underline,

                          fontSize: 16,
                          color: Colors.blue,
                          letterSpacing: 0.4,

                        ),),
                      ),
                    ),//pasw
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                        onPressed: () {


                          if (nameTextEditingController.text.length<3){

                            displayToastMessage("name must be atleast 3 characters", context);

                          }else if (!emailTextEditingController.text.contains("@")){

                            displayToastMessage("Email address is not Valid.", context);

                          }else  if (phoneTextEditingController.text.isEmpty){

                            displayToastMessage("Phone Number is mandatory", context);

                          }else  if (passwordTextEditingController.text.length<6){

                            displayToastMessage("Password must be atleast 6 characters", context);

                          } else {

                            registerNewUser(context);
                          }

                        },
                        color: const Color(0xffff0019),
                        textColor: Colors.white,
                        child: Container(
                          height: 50.0,
                          width: 200,
                          child: Center(
                            child: Text(
                              'Sign_in',
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


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  registerNewUser(BuildContext context)async{
    final User?  user=(await _firebaseAuth.createUserWithEmailAndPassword
      (email: emailTextEditingController.text, password: passwordTextEditingController.text)
    .catchError((errMsg){
      displayToastMessage("Error:" + errMsg.toString(), context);
    })
    ).user;

if (user != null){

Map userDataMap ={

  "name":nameTextEditingController.text.trim(),
  "phone":phoneTextEditingController.text.trim(),
  "email":emailTextEditingController.text.trim(),
};
userRef.child(user.uid).set(userDataMap);
displayToastMessage("congratulations", context);
Navigator.pushNamedAndRemoveUntil(context, MainScrean.idScreen , (route) => false);
}
else{

}
  }
}
displayToastMessage(String message, BuildContext context){

  Fluttertoast.showToast(msg: message);
}