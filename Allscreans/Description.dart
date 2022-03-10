import 'package:flutter/material.dart';
import 'package:user_alojibli/Allscreans/mainAloJibli.dart';

class Description extends StatefulWidget {
  static const String idScreen = "Description";

  @override
  _DescriptionState createState() => _DescriptionState();

}

class _DescriptionState extends State<Description> {
  static double screenHeight=0;
  int i =6 ;
  bool checkBoxValeu = false;
  @override
  Widget build(BuildContext context) {
    var deviceData=MediaQuery.of(context).size;

    screenHeight = deviceData.height;
  if (screenHeight >600){
     i=10;
  }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color:Colors.white,
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Column(

            children: [


          Container(
            decoration: BoxDecoration( color: const Color(0xffffffff),
                boxShadow: [
              BoxShadow(color: const Color(0xffd4d4d4),spreadRadius: 0,blurRadius: 1,offset: Offset(0,0.01)),

            ],


            ),
            child: Column(
              children: [
                SizedBox(height: 30,),



                _buildItem("ahmed","dadas","khadra"),


                SizedBox(height: screenHeight*0.001,),


              ],
            ),
          ),
              SizedBox(height: screenHeight*0.04,),


              SizedBox(height: screenHeight*0.05,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(

                  decoration: InputDecoration(
                        alignLabelWithHint: true,

                    labelText: "Description",
                    labelStyle: TextStyle(

                      color: Colors.amber,
                      fontFamily: 'Metropolis',
                      fontSize: 20,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xcf000000),
                          width: 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusColor: Colors.black,
                    focusedBorder: OutlineInputBorder(

                      borderSide: BorderSide(color: Colors.amber,
                          width: 1

                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    fillColor: const Color(0xA6A6A6),
                    filled: true,
                  ),
                  textInputAction: TextInputAction.done,
                  maxLines: i ,
                  obscureText: false,
                  style: TextStyle(fontSize: 14),

                ),
              ),

        SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Service Express  ",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text("(+100 DZ )",
                      style: TextStyle(
                        color: const Color(0xffff0019),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,

                        fontSize: 18.0,
                      )),
                  Transform.scale(
                    scale: 1.2,
                    child: Checkbox(

                        value: checkBoxValeu,

                        activeColor: Colors.amber,
                        onChanged: (value) {
                          setState(() {

                            checkBoxValeu = value! ;

                          });

                        } ),
                  )
                ],
              ),

              SizedBox(height: screenHeight*0.05,),
              RaisedButton(
                  onPressed: () {
                     print(screenHeight);
                    showModalBottomSheet( backgroundColor:Colors.transparent,  context: context, builder: (builder)=>PopUp());
             print("ahmed");
                  },
                  color: const Color(0xffff0019),
                  textColor: Colors.white,
                  child: Container(
                    height: 48.0,
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(
                          Icons.add_shopping_cart,
                          size: 24,
                          color: const Color(0xfff6c102),
                        ),
                        Text(
                          'Add',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 17,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )),
              SizedBox(height: screenHeight*0.04,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {

                    },
                    child: Text("Back To home  ",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey)),
                  ),
                ),
              ),


            ],
          ),


        ),
      ),
    );
  }
   Widget PopUp(){
    return SingleChildScrollView(
      child: Card( color: Colors.transparent,

        margin:EdgeInsets.only(left: 5,right: 5),
        child: Container(
          height:330,
          decoration: BoxDecoration( color: Colors.white,

            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),),
          child: Center(

            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10 ,bottom: 0),
              child: Column(
                children: [
                  SizedBox(height: screenHeight*0.03,),


                  Text(
                    'Thank You!',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 30,
                      color: Colors.amber,
                      letterSpacing: -0.39,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:screenHeight*0.03,),
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
                  SizedBox(height: screenHeight*0.03,),
                  Text(
                    'Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 14,
                      color: const Color(0xff4a4b4d),
                      letterSpacing: -0.21,
                      height: 1.6428571428571428,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenHeight*0.03,),
                  RaisedButton(
                      onPressed: () {

                      },
                      color: const Color(0xffff0019),
                      textColor: Colors.white,
                      child: Container(
                        height: 48.0,
                        width: 300,
                        child: Center(
                          child: Text(
                            'Track My Order',
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
                  SizedBox(height: 20,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, firstpage4.idScreen , (route) => false);
                        },
                        child: Column(
                          children: [
                            Text("Back To home  ",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    color: Colors.grey)),
                            SizedBox(height: screenHeight*0.03,),
                          ],
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

   }
  Widget _buildItem( String Name, String From, String To ) {
    String imgPath;
    if (Name=="ahmed"){
      imgPath ='images/plate2.png';

    }else if (Name=="khalil"){
      imgPath ='images/epsr.png';

    }else if (Name=="3333"){
      imgPath ='images/other.png';

    }
    else{

      imgPath ='images/map.png';
    }
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(children: [

                    Hero(


                        tag: imgPath,
                        child: Image(

                            image: AssetImage(imgPath),
                            fit: BoxFit.cover,
                            height: 100.0,
                            width: 100.0)),


                    SizedBox(width: 10.0),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(Name,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.place,
                            size: 16,
                            color: const Color(0xffff0019),
                          ),
                          SizedBox(width: 2,),
                          Text(From,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  color: Colors.grey)),
                          SizedBox(width: 2,),
                          Text("To "+To,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  color: Colors.grey)),
                        ],
                      )
                    ])
                  ])),
              SizedBox(height: 10,),
              Row(


                children: [
                  Row(
                    children: [
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.black,
                            onPressed: () { _incrementCounter;
                            print(count);},
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 01, color: Colors.amber,),
                                borderRadius: const BorderRadius.all(const Radius.circular(10))
                            ),
                            height: 35.0,
                            width: 35.0,

                            child: Center(
                              child: Text('$count',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                      color: Colors.black)),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.remove),
                            color: Colors.black,
                            onPressed: () {
                              if ( count==0){
                                count=0;
                              } else {
                                _decremant;
                              }
                            },
                          ),
                        ],
                      ),


                      ],
                  ),
                ],
              ),


            ],
          ),
        ));
  }
  int count = 0;
  void _incrementCounter() {
    setState(() {

      count+=1;
    });}
    void _decremant() {
      setState(() {

        count -=1;
      });
}




}
