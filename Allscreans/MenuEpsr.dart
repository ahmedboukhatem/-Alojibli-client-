import 'package:flutter/material.dart';
import 'package:user_alojibli/Model/MenuEpis.dart';
class MenuEpsr extends StatefulWidget {
  static const String idScreen = "MenuEpsr";
  @override
  _MenuEpsrState createState() => _MenuEpsrState();
}
class _MenuEpsrState extends State<MenuEpsr> {
   int count =0;
   String imgPath ='images/epsr.png';

   List<MenuEpis> listResto = [  MenuEpis( name:"Javil",price:  15,nb: 0, button: false ),
     MenuEpis( name:"Loubia",price:  20,nb: 0,button: false ),
     MenuEpis( name:"3dess",price:  15,nb: 0 ,button: false),
     MenuEpis( name:"Frit",price:  15,nb: 0 ,button: false)] ;
  static double screenHeight=0;
  static double screenWidth=0;
  @override
  Widget build(BuildContext context) {
    var deviceData=MediaQuery.of(context).size;

    screenHeight = deviceData.height;
    screenWidth = deviceData.width;
    return Scaffold(

      body:  ListView(

          children: [
            Container(
              decoration: BoxDecoration(
                // color:Colors.amber,
                  color: const Color(0xffff0019),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),


              child: SafeArea(

                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.arrow_back_ios,size: 30,),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: screenWidth*0.07 ,),
                                  IconButton(
                                    icon: Icon(Icons.add_business,size: 30,),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                  Text("Madina",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Oswald',
                                          fontSize: 25.0,
                                          color: Colors.white)), ],
                              ),
                            ],
                          ),),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Padding(

                      padding: const EdgeInsets.only(
                          top: 8, left: 8, right: 8, bottom: 10),


                      child: Container(


                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),

                        child: ListTile(
                          leading: Icon(
                            Icons.search,
                            color:Colors.amber,
                            //   color: const Color(0xffff0019),
                          ),
                          title: TextField(
                            textInputAction: TextInputAction.search,

                            decoration: InputDecoration(
                              hintText: " Find your ..... ",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),),


            Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height - 215.0,
                color: Colors.transparent,
                child: ListView.builder(
                  itemCount: listResto.length,

                  itemBuilder: (BuildContext context, int index) {

                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration( color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(color: const Color(0xffd4d4d4),spreadRadius: 0,blurRadius: 2,offset: Offset(0,0.01)),

                            ],


                          ),
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
                                            height: 90.0,
                                            width: 90.0)),


                                    SizedBox(height: 10.0),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,left: 20),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start, children: [
                                        Text(listResto[index].name,
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold)),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [



                                            SizedBox(width: 2,),
                                            Text("Average Price: "  + listResto[index].price.toString() +" DZ" ,
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 15.0,
                                                    color: Colors.grey)),

                                          ],
                                        ),
                                        SizedBox(height: 15),

                                        listResto[index].button?
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              listResto[index].button=!listResto[index].button;
                                            });

                                          },
                                          child: Container(
                                            width: 60,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: const Color(0xffff0019),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Text("Cancel",style: TextStyle( color:Colors. white, fontSize: 15, fontWeight: FontWeight.bold,)),
                                              ],
                                            ),
                                          ),
                                        ):
                                        InkWell(
                                          onTap: () {

                                            setState(() {
                                              listResto[index].button=!listResto[index].button;
                                            });
                                          },
                                          child: Container(
                                            width: 50,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Text("This",style: TextStyle( color:Colors. white, fontSize: 15, fontWeight: FontWeight.bold,)),
                                              ],
                                            ),
                                          ),
                                        ),

                                      ]),
                                    )
                                  ])),

                              Row(


                                children: [
                                  Row(
                                    children: [
                                      SizedBox(height: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 15,),
                                            IconButton(
                                              icon: Icon(Icons.add, size: 15,),
                                              onPressed: () {
                setState(() {
                  listResto[index].nb++;

                         });
                                                ;},
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(width: 01, color: Colors.amber,),
                                                  borderRadius: const BorderRadius.all(const Radius.circular(10))
                                              ),
                                              height: 30.0,
                                              width: 30.0,

                                              child: Center(
                                                child: Text("${listResto[index].nb}",
                                                    style: TextStyle(
                                                        fontFamily: 'Montserrat',
                                                        fontSize: 15.0,
                                                        color: Colors.black)),
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.remove,size:15),
                                              color: Colors.black,
                                              onPressed: () {
                                                if(listResto[index].nb>0)
                                               setState(() {
                                                 listResto[index].nb--;
                                               });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),



                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],


                    );
                  },



                )),
            SizedBox(height: 10,),
            Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 80,right: 80),
                child: RaisedButton(
                    onPressed: ()  {
                    },
                    color: const Color(0xffff0019),
                    textColor: Colors.white,
                    child: Container(
                      height: 40.0,
                      width: 150,
                      child: Center(
                        child: Text(
                          'Confirme',
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
            ),






          ]
      ),

    );
  }



}
