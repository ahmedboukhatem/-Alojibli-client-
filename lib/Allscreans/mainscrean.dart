import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_alojibli/Allscreans/mainAloJibli.dart';
import 'package:user_alojibli/Allscreans/phoneVRF.dart';

import 'LoginScreen.dart';
import '../main.dart';


class MainScrean extends StatefulWidget {
  static const String idScreen = "main";
  const MainScrean({Key? key}) : super(key: key);

  @override
  _MainScreanState createState() => _MainScreanState();
}

class _MainScreanState extends State<MainScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[

            // Adobe XD layer: 'isolated-shot-happy…' (shape)
            Container(
             child: Image(image: const AssetImage('images/img.PNG'),height: MediaQuery.of(context).size.height*0.75,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,

                alignment: Alignment.center,
              ),


            ),

          Pinned.fromPins(
            Pin(start: 1.0, end: -1.0),
            Pin(size: 385.9, end: 0.0),
            child: SvgPicture.string(
              _svg_h86fda,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),

          Pinned.fromPins(
            Pin(size: 159.0, middle: 0.487),
            Pin(size: 37.0, end: 80.0),

            // Adobe XD layer: 'button ' (group)


            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 2.0, end: 0.0),
                  child: InkWell(
                    onTap: () {

                      userRef.child(auth.currentUser!.uid).child("firstuse").set(false);



                Navigator.pushNamedAndRemoveUntil(context, firstpage4.idScreen , (route) => false);
                    },
                    child: Container(

                      child: Center(
                        child: Text(

                          'NEXT',
                          style: TextStyle(

                            fontFamily: 'beIN',
                            fontSize: 16,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.48,
                            fontWeight: FontWeight.w900,

                          ),
                          textAlign: TextAlign.center,

                        ),
                      ),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(37.0),
                        color: const Color(0xffff0019),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x57000000),
                            offset: Offset(3, 3),
                            blurRadius: 7,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),



              ],
            ),

          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.5),
            Pin(size: 12.0, middle: 0.6871),
            child:
            // Adobe XD layer: '3_button ' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 12.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffada89f),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x80000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xfff6b941),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x70000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(

                  Pin(size: 12.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffada89f),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x8c000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Pinned.fromPins(
            Pin(start: 58.0, end: 58.0)  ,

            Pin(size: 65.0, middle: 0.7964),

            child: Text(

              'Discover the best fast delivery to your doorstep ',
              style: TextStyle(
                fontFamily: 'Century Gothic',
                fontSize: 20,
                color: const Color(0xff928b7d),
                letterSpacing: 0.6,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_h86fda =
    '<svg viewBox="1.0 473.1 428.0 452.9" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(1.0, 541.0)" d="M 85 0 C 85 0 228.0819702148438 0 313.8319702148438 0 C 399.5819702148438 0 427.8000183105469 -67.933349609375 427.8000183105469 -67.933349609375 L 428 385 L 0 385 L 0 85 C 0 38.05579376220703 38.05579376220703 0 85 0 Z" fill="#fff7e1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
