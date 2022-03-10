import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tosts extends StatefulWidget {
  static const String idScreen = "Tosts";

  @override
  _TostsState createState() => _TostsState();
}

class _TostsState extends State<Tosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          children: [
            SizedBox(height: 100,),
             Row(
               children: [

                 Icon(
                   Icons.delivery_dining,

                   color: Colors.amber,
                 ),//delivry
                 Icon(
                   Icons.shopping_cart,
                   size: 30,
                   color: Colors.amber,
                 ),//shopping

                 Icon(
                   Icons.restaurant_menu,
                   size: 30,
                   color: Colors.amber,
                 ),//resturent
                 SvgPicture.string(
                   From,
                   allowDrawingOutsideViewBox: true,
                   fit: BoxFit.fill,
                   color: const Color(0xff071a58),

                   height: 30,
                   width: 30,
                 ),// From icon
                 SvgPicture.string(
                   To,
                   allowDrawingOutsideViewBox: true,
                   fit: BoxFit.fill,
                   color: Colors.amber,

                   height: 30,
                   width: 30,
                 ),//TO icon





               ],

             ),


            Center(
              child: FlatButton(
                  color: Colors.deepOrange,
                  onPressed: ()  {
                     //showInformationDialog(context);
                     DialogFinished(context);
                // TrackingDialog(context);

                  },
                  child: Text(
                    "Stateful Dialog",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          ],
        ),
      ),

    );
  }

 void showInformationDialog(BuildContext context) async {
    return await showDialog(context: context,
        builder: (context){

          return StatefulBuilder(builder: (context,setState){
            return AlertDialog(

              title: Center(child: Text("Sorry",

                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                color: Colors.amber,
                letterSpacing: -0.21,

                height: 1.6428571428571428,
              ),)),
              content: Container( height: 50, child:
              Center(child:
              Text("wach achayeb mata9daarch tjib rou7 takhra 9bal ",
                  style: TextStyle(

                fontSize: 18,
                color: const Color(0xff0c0c0c),
                fontWeight: FontWeight.w500,
                height: 1.5,
              )
                , textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,))),
              actions: <Widget>[

                Center(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: const Color(0xffff0019),
                      textColor: Colors.white,
                      child: Container(
                        height: 40.0,
                        width: 80,
                        child: Center(
                          child: Text(
                            ' Ok ',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 15,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
               SizedBox(height: 10,)
              /*  Center(
                  child: TextButton(
                    child: Text('Okay'),
                    onPressed: (){

                        // Do something like updating SharedPreferences or User Settings etc.
                        Navigator.of(context).pop();

                    },
                  ),
                ),*/
              ],
            );
          });
        });
  } // hadi Ta3 les services min ykon mkhayer comand

 void DialogFinished(BuildContext context) async {
    return await showDialog(context: context,
        builder: (context){


          return StatefulBuilder(builder: (context,setState){
            return AlertDialog(

              title: Center(child: Text(
                'Thank You!',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 30,
                  color: Colors.amber,
                  letterSpacing: -0.39,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),),
              content: Container( height: 150, child:
              Center(child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [



                      Text(
                        'for your order',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 17,
                          color: const Color(0xff4a4b4d),
                          letterSpacing: -0.255,
                          fontWeight: FontWeight.w700,
                          height: 1.5294117647058822,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Cbn rah lcommand ta3ek wslat , nchlh mankounoch tawalna 3lik wjateQ ',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                          letterSpacing: -0.21,
                          height: 1.6428571428571428,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        ' 500,00 DZ ',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                          color: Colors.amber,
                          letterSpacing: -0.21,
                          height: 1.6428571428571428,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),

             )),
              actions: <Widget>[

                Center(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: const Color(0xffff0019),
                      textColor: Colors.white,
                      child: Container(
                        height: 40.0,
                        width: 100,
                        child: Center(
                          child: Text(
                            ' Conferm ',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 15,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
               SizedBox(height: 10,)
              /*  Center(
                  child: TextButton(
                    child: Text('Okay'),
                    onPressed: (){

                        // Do something like updating SharedPreferences or User Settings etc.
                        Navigator.of(context).pop();

                    },
                  ),
                ),*/
              ],
            );
          });
        });
  } // hadi kiywasselou l comand tatla3lou


  void TrackingDialog(BuildContext context) async {
    return await showDialog(context: context,
        builder: (context){

          return StatefulBuilder(builder: (context,setState){
            return AlertDialog(

              title: Center(child: Text("Sorry",

                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: Colors.amber,
                  letterSpacing: -0.21,

                  height: 1.6428571428571428,
                ),)),
              content: Container( height: 100, child:
              Center(child:
              Text("Mazal majabt walou chri wmba3d kamal  wlh matfot wlh matakliha  ",
                style: TextStyle(

                  fontSize: 18,
                  color: const Color(0xff0c0c0c),
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                )
                , textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,))),
              actions: <Widget>[

                Center(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: const Color(0xffff0019),
                      textColor: Colors.white,
                      child: Container(
                        height: 40.0,
                        width: 80,
                        child: Center(
                          child: Text(
                            ' Ok ',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 15,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                SizedBox(height: 10,)
                /*  Center(
                  child: TextButton(
                    child: Text('Okay'),
                    onPressed: (){

                        // Do something like updating SharedPreferences or User Settings etc.
                        Navigator.of(context).pop();

                    },
                  ),
                ),*/
              ],
            );
          });
        });
  } // hadi kiykon machi dayer comand wyabghi yatracki

}
const String From = '<svg id="Layer_1" data-name="Layer 1"  viewBox="0 0 341.33 512"><defs><style>.cls-1{fill:#130fce;}.cls-2{fill:#0049ff;}</style></defs><path class="cls-1" d="M256,0C161.9,0,85.33,76.56,85.33,170.67a171,171,0,0,0,20.49,81.1L246.67,506.5a10.66,10.66,0,0,0,18.66,0l140.9-254.81a171,171,0,0,0,20.44-81C426.67,76.56,350.1,0,256,0Zm0,288A117.34,117.34,0,1,1,373.33,170.67,117.46,117.46,0,0,1,256,288Z" transform="translate(-85.33)"/><path class="cls-2" d="M202.09,189.38c3.18-8.54,6.79-16.83,10.51-25.06S220.26,148,224.29,140s8.22-16,12.5-23.92c2.12-4,4.33-7.87,6.49-11.81l6.66-11.72L256,81.84l6.07,10.66,6.67,11.72c2.16,3.93,4.37,7.85,6.5,11.81,4.27,7.91,8.47,15.86,12.49,23.91s8,16.16,11.69,24.38,7.33,16.51,10.5,25.06c-5.81-7-11.18-14.29-16.45-21.62s-10.32-14.8-15.27-22.32-9.74-15.12-14.46-22.78c-2.36-3.82-4.65-7.69-7-11.53L249.94,99.5h12.12l-6.82,11.62c-2.33,3.85-4.61,7.72-7,11.54q-7.06,11.47-14.47,22.77c-4.95,7.52-10,15-15.26,22.32S207.89,182.36,202.09,189.38Z" transform="translate(-85.33)"/><polygon class="cls-2" points="179.16 147.54 169.17 284 165.17 147.23 179.16 147.54"/></svg>';
const String To = '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 341.33 512"><defs><style>.cls-1{fill:#39489e;}.cls-2{fill:#405dab;}</style></defs><path class="cls-1" d="M264.92,1.54c-94.1,0-170.66,76.56-170.66,170.67a170.92,170.92,0,0,0,20.49,81.1L255.59,508a10.67,10.67,0,0,0,18.67,0L415.15,253.23a170.91,170.91,0,0,0,20.44-81C435.59,78.1,359,1.54,264.92,1.54Zm0,288A117.34,117.34,0,1,1,382.26,172.21,117.46,117.46,0,0,1,264.92,289.54Z" transform="translate(-94.26 -1.54)"/><path class="cls-2" d="M318.84,161.16c-3.18,8.54-6.8,16.83-10.52,25.06s-7.66,16.32-11.69,24.37-8.22,16-12.49,23.92c-2.12,4-4.34,7.87-6.5,11.81L271,258l-6.05,10.66L258.86,258l-6.66-11.71c-2.17-3.94-4.37-7.86-6.51-11.81-4.26-7.92-8.46-15.87-12.49-23.92s-8-16.15-11.69-24.37-7.33-16.52-10.5-25.07c5.82,7,11.19,14.29,16.46,21.63s10.31,14.79,15.26,22.31,9.75,15.12,14.46,22.78c2.36,3.82,4.65,7.69,7,11.53L271,251H258.86l6.82-11.62c2.33-3.85,4.61-7.72,7-11.54q7.06-11.48,14.46-22.77c5-7.52,10-15,15.26-22.32S313,168.18,318.84,161.16Z" transform="translate(-94.26 -1.54)"/><polygon class="cls-2" points="162.17 201.46 172.17 65 176.16 201.77 162.17 201.46"/></svg>';