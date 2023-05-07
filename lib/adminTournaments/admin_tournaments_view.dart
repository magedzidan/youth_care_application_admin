import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradutionprojectadmin/constant/constants.dart';

class AdminTournamentsView extends StatefulWidget {
  _AnimatedAppBarState createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AdminTournamentsView>
    with TickerProviderStateMixin {
  final TextEditingController stateController = TextEditingController();
  final FocusNode stateFocus = FocusNode();

  var animation;
  var controller;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: gradientColorA
            //color set to purple or set your own color
            ));

    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    TextEditingController editingController = TextEditingController();


    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [

            Container(
              child: FractionallySizedBox(
                heightFactor: 1.0,
                widthFactor: 1.0,
                //for full screen set heightFactor: 1.0,widthFactor: 1.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assest/backgroundoriginal.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 1.35,
              width: MediaQuery.of(context).size.width / 1.17,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child:  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        width: 190,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: adminprimarycolor,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Current Tournaments',style: TextStyle(
                              color: Colors.white.withAlpha(240),
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),),
                        ),
                      ),
                      SizedBox(height: 18,),
                  Container(
                      width: 310,
                      decoration: BoxDecoration(
                          color: Color(0xFFf6f7f7),
                      ),  child:  SingleChildScrollView(
                      child: TextFormField(
                      onChanged: (value) {
                },
                  controller: editingController,
                  decoration: InputDecoration(

                      contentPadding: EdgeInsets.symmetric(vertical: 27),
                      hintText: "Search Tournaments",
                      hintStyle: TextStyle(color: Color(0xFFbdbcbc)),
                      prefixIcon: Icon(Icons.search,color:Color(0xFFd8d8d8) ,),
                      border:  OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10)
                      )),
                ),
              ),
            ),
                      SizedBox(height: 25,),

                      /*Container(
                        width: 310,
                        decoration: BoxDecoration(
                          color: Color(0xFFf6f7f7),
*//*
*//*
                        ),
                        child:  TextFormField(
                          onChanged: (value) {
                          },
                          controller: editingController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 3),
                              hintText: "Search Tournaments",
                              hintStyle: TextStyle(color: Color(0xFFbdbcbc)),
                              prefixIcon: Icon(Icons.search,color:Color(0xFFd8d8d8) ,),
                              border:  OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10)
                              )),
                        ),
                      ),*/
                      Container(
                        width: 315,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFF98aaaf)),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tournament1',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16
                                  ),),
                                  Text('Date:12/03/2022',style: TextStyle(
                                      letterSpacing: 2,
                                      color: Color(0xFFb0b1ae),
                                      fontSize: 10
                                  ),),
                                  Text('Avaliable',style: TextStyle(
                                      color: Color(0xFF92d190),
                                      fontSize: 14
                                  ))
                                ],
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Chess Competiation',style: TextStyle(
                                  color: Color(0xFFa5bbc3),
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.red
                                ),
                                child: Icon(Icons.delete,size: 26,color: Colors.white,),
                              ),
                            )
                          ],

                        ),

                      ),
                      SizedBox(height: 23,),
                      Container(
                        width: 315,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFF98aaaf)),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tournament2',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16
                                  ),),
                                  Text('Date:12/03/2022',style: TextStyle(
                                      letterSpacing: 2,
                                      color: Color(0xFFb0b1ae),
                                      fontSize: 10
                                  ),),
                                  Text('Expired',style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14
                                  ))
                                ],
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Football Competiation',style: TextStyle(
                                  color: Color(0xFFa5bbc3),
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.red
                                ),
                                child: Icon(Icons.delete,size: 26,color: Colors.white,),
                              ),
                            )
                          ],

                        ),

                      ),
                      SizedBox(height: 23,),
                      Container(
                        width: 315,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFF98aaaf)),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tournament2',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16
                                  ),),
                                  Text('Date:12/03/2022',style: TextStyle(
                                      letterSpacing: 2,
                                      color: Color(0xFFb0b1ae),
                                      fontSize: 10
                                  ),),
                                  Text('Expired',style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14
                                  ))
                                ],
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Football Competiation',style: TextStyle(
                                  color: Color(0xFFa5bbc3),
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.red
                                ),
                                child: Icon(Icons.delete,size: 26,color: Colors.white,),
                              ),
                            )
                          ],

                        ),

                      ),
                      SizedBox(height: 23,),
                      Container(
                        width: 315,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFF98aaaf)),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tournament2',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16
                                  ),),
                                  Text('Date:12/03/2022',style: TextStyle(
                                      letterSpacing: 2,
                                      color: Color(0xFFb0b1ae),
                                      fontSize: 10
                                  ),),
                                  Text('Expired',style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14
                                  ))
                                ],
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Football Competiation',style: TextStyle(
                                  color: Color(0xFFa5bbc3),
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.red
                                ),
                                child: Icon(Icons.delete,size: 26,color: Colors.white,),
                              ),
                            )
                          ],

                        ),

                      ),
                      SizedBox(height: 23,),
                      Container(
                        width: 315,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFF98aaaf)),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tournament2',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16
                                  ),),
                                  Text('Date:12/03/2022',style: TextStyle(
                                      letterSpacing: 2,
                                      color: Color(0xFFb0b1ae),
                                      fontSize: 10
                                  ),),
                                  Text('Expired',style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14
                                  ))
                                ],
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Football Competiation',style: TextStyle(
                                  color: Color(0xFFa5bbc3),
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.red
                                ),
                                child: Icon(Icons.delete,size: 26,color: Colors.white,),
                              ),
                            )
                          ],

                        ),

                      ),
                      SizedBox(height: 23,),
                      Container(
                        width: 315,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFF98aaaf)),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tournament2',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16
                                  ),),
                                  Text('Date:12/03/2022',style: TextStyle(
                                      letterSpacing: 2,
                                      color: Color(0xFFb0b1ae),
                                      fontSize: 10
                                  ),),
                                  Text('Expired',style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14
                                  ))
                                ],
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Football Competiation',style: TextStyle(
                                  color: Color(0xFFa5bbc3),
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.red
                                ),
                                child: Icon(Icons.delete,size: 26,color: Colors.white,),
                              ),
                            )
                          ],

                        ),

                      ),
                      SizedBox(height: 23,),
                      Container(
                        width: 315,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFF98aaaf)),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tournament2',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16
                                  ),),
                                  Text('Date:12/03/2022',style: TextStyle(
                                      letterSpacing: 2,
                                      color: Color(0xFFb0b1ae),
                                      fontSize: 10
                                  ),),
                                  Text('Expired',style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14
                                  ))
                                ],
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Football Competiation',style: TextStyle(
                                  color: Color(0xFFa5bbc3),
                                  fontSize: 11
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 29),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.red
                                ),
                                child: Icon(Icons.delete,size: 26,color: Colors.white,),
                              ),
                            )
                          ],

                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0.0, -330.0),
              child: Container(
                child: Text('Created Tournaments',style: TextStyle(
                  color: Colors.white.withAlpha(240),
                  fontSize: 17,
                  fontWeight: FontWeight.w500
                ),),
              ),
            ),  //the title


      Transform.translate(
        offset: const Offset(0.0, 274.0),
        child: Container(
          alignment: Alignment.center,
          height: 65,
          width: 336,
          decoration: BoxDecoration(
            color: Color(0xFF4e77ab),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))
          ),
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              
              child: Text('Add Tournament',style: TextStyle(
                color: Color(0xFF93b1d2),
                fontWeight: FontWeight.w500
              ),))
        )
      )

          ],
        ),
      ),
    );
  }
}
