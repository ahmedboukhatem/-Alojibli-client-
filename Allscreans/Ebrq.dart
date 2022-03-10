import 'package:flutter/material.dart';
class AbrQ extends StatefulWidget {
  const AbrQ({Key? key}) : super(key: key);

  @override
  _AbrQState createState() => _AbrQState();
}

class _AbrQState extends State<AbrQ> {
  int i =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Security'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(

          children: [
            SizedBox(height: 40,),

            Center(
              child: Image(


                  image: AssetImage( 'images/door1.jpg' ),
                  fit: BoxFit.cover,
                  height: 150.0,
                  width: 150.0),
            ),
            SizedBox(height: 20,),
            Center(

              child: Text(
                "ktab rou7eQ",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                    color: Colors.grey[600]

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                /*  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0,left: 10,top: 40),
                      child: Icon(Icons.door_back,
                        color: Colors.amber,
                        size: 80,),
                    ),
                  ),*/

                  Column(
                    children: [

                      Row(
                        children: [

                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(

                                    onPressed: () {
                                      setState(() {
                                        i++;
                                      });
                                    },


                                    child: Text('1',  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,

                                    ),),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      primary: i < 1 ? Colors.blue: const Color(0xffff0019),

                                    ),
                                  ),
                                  SizedBox(width: 25,),
                                  Container( width: 180,
                                    child: Text(
                                      'First attempt',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('2',  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,

                                    ),),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      primary: i < 4 ? Colors.blue: const Color(0xffff0019),

                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Container( width: 180,
                                    child: Text(
                                      'Second attempt',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('3'
                                        '',  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,

                                    ),),
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      primary: i < 8 ? Colors.blue: const Color(0xffff0019),

                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Container( width: 180,
                                    child: Text(
                                      'Last attempt',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ),



                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
