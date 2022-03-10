import 'package:flutter/material.dart';
import 'package:user_alojibli/Model/MenuResto.dart';

class MenuPage extends StatefulWidget {
  static const String idScreen = "MenuPage";
  @override
  _MenuPageState createState() => _MenuPageState();
}
List<MenuResto> listRestorant = [
  MenuResto( Image: 'images/TK.jpg',name:"Javil",price:  15,nb: 0, button: false ),
  MenuResto( Image: 'images/PZ.jpg',name:"Pizza",price:  300,nb: 0, button: false ),


] ;
class _MenuPageState extends State<MenuPage> {

  @override
  static double screenWidth=0;
  Widget build(BuildContext context) {
    var deviceData=MediaQuery.of(context).size;

    screenWidth = deviceData.height;
    return Scaffold(

      body: ListView(
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
                              icon: Icon(Icons.restaurant_menu,size: 30,),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            Text("Hard Rock",
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
           SizedBox(height: 10,),

          Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 225.0,
              child: ListView.builder(

                  itemCount: listRestorant.length,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Stack(
                        children: <Widget>[


                          // restaurant image
                          ClipRRect(

                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Image(

                              image:AssetImage(listRestorant[index].Image) ,
                              height: 220,
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),

                          // fading black
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),

                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.6),
                                    Colors.black.withOpacity(0.6),
                                    Colors.black.withOpacity(0.6),
                                    Colors.black.withOpacity(0.4),
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.05),
                                    Colors.black.withOpacity(0.025),
                                  ],
                                )),
                          ),

                          //restaurant name
                          Positioned.fill(
                            bottom: 50,
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(listRestorant[index].name, style: TextStyle( color:Colors. white, fontSize: 26, fontWeight: FontWeight.w300,)),
                                )),),

                          // average price
                          Positioned.fill(
                              bottom: 30,
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    children: [
                                      Text( "    Average Price: "  + listRestorant[index].price.toString() +" DZ"  ,
                                          style: TextStyle( color:Colors. white, fontSize: 16, fontWeight: FontWeight.w300,)),

                                    ],
                                  ))),

                          // rating widget
                          Positioned.fill(

                              child: Align(
                                alignment: Alignment.topRight,
                                child:   Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        color: Colors.white,
                                        onPressed: () {
                                          setState(() {
                                            listRestorant[index].nb++;

                                          });
                                        },
                                      ),
                                      Container(
                                        decoration: BoxDecoration( color: Colors.deepOrange,
                                            border: Border.all(width: 01, color: Colors.transparent,),
                                            borderRadius: const BorderRadius.all(const Radius.circular(10))
                                        ),
                                        height: 35.0,
                                        width: 35.0,

                                        child: Center(
                                          child: Text("${listRestorant[index].nb}",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 20.0,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        color: Colors.white,
                                        onPressed: () {
                                          if(listRestorant[index].nb>0)
                                            setState(() {
                                              listRestorant[index].nb--;
                                            });

                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )),

                          // close button
                          Positioned.fill(
                              bottom: 15,
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: InkWell(
                                    onTap: () {
                                      print("ahmed");

                                    },
                                    child:listRestorant[index].button?
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          listRestorant[index].button=!listRestorant[index].button;
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
                                          listRestorant[index].button=!listRestorant[index].button;
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
                                  ),
                                ),


                              )),


                          //like button



                        ],
                      ),
                    );
                  })),

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
  Widget Menu( String path ,String Name, double Price ) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: <Widget>[


          // restaurant image
          ClipRRect(

            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Image(

              image:AssetImage(path) ,
              height: 220,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),

          // fading black
          Container(
            height: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),

                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.05),
                    Colors.black.withOpacity(0.025),
                  ],
                )),
          ),

          //restaurant name
          Positioned.fill(
            bottom: 50,
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(Name, style: TextStyle( color:Colors. white, fontSize: 26, fontWeight: FontWeight.w300,)),
                )),),

          // average price
          Positioned.fill(
              bottom: 30,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: [
                      Text( "    Average Price: "  + Price.toString() +" DZ"  ,
                          style: TextStyle( color:Colors. white, fontSize: 16, fontWeight: FontWeight.w300,)),

                    ],
                  ))),

          // rating widget
          Positioned.fill(

              child: Align(
                alignment: Alignment.topRight,
                child:   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () { },
                      ),
                      Container(
                        decoration: BoxDecoration( color: Colors.deepOrange,
                            border: Border.all(width: 01, color: Colors.transparent,),
                            borderRadius: const BorderRadius.all(const Radius.circular(10))
                        ),
                        height: 35.0,
                        width: 35.0,

                        child: Center(
                          child: Text('+1',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  color: Colors.white)),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Colors.white,
                        onPressed: () {

                        },
                      ),
                    ],
                  ),
                ),
              )),

          // close button
          Positioned.fill(
              bottom: 15,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                    onTap: () {
                      print("ahmed");

                    },
                    child: Container(
                      width: 65,
                      height: 35,
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
                ),


              )),


          //like button



        ],
      ),
    );

  }
}
