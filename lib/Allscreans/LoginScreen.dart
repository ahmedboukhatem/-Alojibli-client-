import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:user_alojibli/Allscreans/Check.dart';

import 'package:user_alojibli/Allscreans/Home.dart';
import 'package:user_alojibli/Allscreans/mainAloJibli.dart';

import '../main.dart';
import 'Registry.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LoginScreen extends StatefulWidget {
  static const String idScreen = "LoginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final phoneController = TextEditingController();
  final NameController = TextEditingController();

  final BoxDecoration pinPutDecoration =BoxDecoration(
    color:  const Color(0xffeceae6),
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(
        color: const Color(0xfff6b941),width: 0.5
    ),
  );
       final otpController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;

  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = false;
    });

    try {
      final authCredential =
      await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if(authCredential.user != null){
        Map userDataMap ={
         "firstuse":true,
          "phone":phoneController.text.trim(),
          "email":NameController.text.trim(),
        };
        userRef.child(auth.currentUser!.uid).set(userDataMap);
        displayToastMessage("congratulations", context);


       // Navigator.push(context, MaterialPageRoute(builder: (context)=> firstpage4())); ta9der taRja3
        Navigator.pushNamedAndRemoveUntil(context, CheckScreen.routeName , (route) => false);
      }

    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      _scaffoldKey.currentState!
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  }
//////////////////////////////////////////////////////////////////


  getMobileFormWidget(context) {
    return SingleChildScrollView(
      child: Column(
        children: [


      Center(

         child:     Image(image: AssetImage('images/AloJibli1.png'),
                height: 200,
                width: 200,

                alignment: Alignment.center,
              ),


          ),
          SizedBox(width: 20),
          Container(
            child: Text(
              'LOGIN',

              style: TextStyle(
                fontFamily: 'A-bad kh@t',
                fontWeight: FontWeight.bold,

                fontSize: 30,
                color: Colors.black54,


              ),

              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [

                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: NameController,
                  keyboardType: TextInputType.name,
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
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xcf7c7d7e),
                          width: 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber,
                          width: 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.email),
                    fillColor: const Color(0xA6A6A6),
                    filled: true,
                  ),
                  style: TextStyle(fontSize: 14),
                ), //Email

                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xcf7c7d7e),
                          width: 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber,
                          width: 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.phone),

                    fillColor: const Color(0xA6A6A6),
                    filled: true,
                  ),
                  style: TextStyle(fontSize: 14),
                ), //pasw
                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                    onPressed: () async {
      if (NameController.text.isEmpty) {
      displayToastMessage(
      "write your name", context);
      } else
      if (phoneController.text.isEmpty) {
      displayToastMessage("Phone Incorect", context);
      }else{

      setState(() {
                        showLoading = true;
                      });

                      await _auth.verifyPhoneNumber(
                        phoneNumber: phoneController.text,
                        verificationCompleted: (phoneAuthCredential) async {

                          setState(() {
                            showLoading = false;
                          });
                          //signInWithPhoneAuthCredential(phoneAuthCredential);
                        },
                        verificationFailed: (verificationFailed) async {
                          setState(() {
                            showLoading = false;
                          });
                          _scaffoldKey.currentState!.showSnackBar(
                              SnackBar(content: Text(verificationFailed.message.toString())));
                        },
                        codeSent: (verificationId, resendingToken) async {
                          setState(() {
                            showLoading = false;
                            currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                            this.verificationId = verificationId;
                          });
                        },
                        codeAutoRetrievalTimeout: (verificationId) async {},
                      );
                    }
                    },
                    color: const Color(0xffff0019),
                    textColor: Colors.white,
                    child: Container(
                      height: 50.0,
                      width: 200,
                      child: Center(
                        child: Text(
                          'LOGIN',
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
                SizedBox(
                  height: 30,
                ),
                Text(

                  'Discover the best fast delivery to your doorstep ',
                  style: TextStyle(
                    fontFamily: 'Century Gothic',
                    fontSize: 14,
                    color: const Color(0xffc7c1b4),
                    letterSpacing: 0.6,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),


          SizedBox(
            height: 16,
          ),


        ],
      ),
    );
  }

  getOtpFormWidget(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image(image: AssetImage('images/AloJibli1.png'),
            height: 200,
            width: 200,

            alignment: Alignment.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
           "We have sent an OTP to your phne number 0"+phoneController.text.substring(4,7)+ "****"+phoneController.text.substring(11,13)+"",
            style: TextStyle(
              fontFamily: 'beIN',
              fontSize: 14,
              color: const Color(0xff686866),

            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 30,
          ),
          Padding(

            padding: const EdgeInsets.all(5.0),

            child: PinPut(
              fieldsCount: 6,

              textStyle: const TextStyle(fontSize: 25.0,  color: Colors.black54),

              controller: otpController,
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child:

            RaisedButton(
                onPressed: ()async {
                  PhoneAuthCredential phoneAuthCredential =
                  PhoneAuthProvider.credential(
                      verificationId: verificationId, smsCode: otpController.text);

                  signInWithPhoneAuthCredential(phoneAuthCredential);
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
          Text(

            'Discover the best fast delivery to your doorstep ',
            style: TextStyle(
              fontFamily: 'Century Gothic',
              fontSize: 20,
              color: const Color(0xff928b7d),
              letterSpacing: 0.6,
            ),
            textAlign: TextAlign.center,
          ),


        ],
      ),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          child: showLoading
              ? Center(
              child:SizedBox(
                width: 100,
                height: 100,
            child: CircularProgressIndicator(
              color: const Color(0xffff0019),
            ),),
          )
              : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
              ? getMobileFormWidget(context)
              : getOtpFormWidget(context),
          padding: const EdgeInsets.all(16),
        ));
  }

  //registerNewUser(BuildContext context)async{
    //final User?  user=(await _auth.createUserWithEmailAndPassword
   //(email: emailController.text, password: phoneController.text)
      //  .catchError((errMsg){
     // displayToastMessage("Error:" + errMsg.toString(), context);
    //})
    //).user;

    //if (user != null){

      //Map userDataMap ={

        //"phone":phoneController.text.trim(),
        //"email":emailController.text.trim(),
      //};
      //userRef.child(auth.currentUser!.uid).set(userDataMap);
      //displayToastMessage("congratulations", context);

    //}
    //else{

    //}
  //}
}
displayToastMessage(String message, BuildContext context){

  Fluttertoast.showToast(msg: message);
}

