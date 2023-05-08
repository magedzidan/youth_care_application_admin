import 'dart:math';
import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradutionprojectadmin/adminEvents/eventcard/eventcardview.dart';
import 'package:gradutionprojectadmin/adminEvents/eventdata/eventdata.dart';
import 'package:gradutionprojectadmin/constant/constants.dart';
import 'package:gradutionprojectadmin/createEvent/create_event.dart';
class AdminEventsView extends StatefulWidget {
  _AnimatedAppBarState createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AdminEventsView>
    with TickerProviderStateMixin {
  final TextEditingController stateController = TextEditingController();
  final FocusNode stateFocus = FocusNode();

  var animation;
  var controller;
  late List foundEvents;
  void initState() {
    super.initState();

    _runFilter("");
  }
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
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 1.35,
                width: MediaQuery.of(context).size.width / 1.17,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child:  SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 310.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            padding: const EdgeInsets.only(left: 40),
                            child: Text('Current Events',style: TextStyle(
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
                      ),
                      child: Form(
                        child: TextFormField(
                          onChanged: (value) => _runFilter(value),
                          cursorColor: gradientColorA,
                          decoration: InputDecoration(
                            hintText: "Search Events",
                            hintStyle: TextStyle(color: Color(0xFFbdbcbc)),
                              border:  OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10)
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 27),

                            hoverColor: gradientColorA,
                            prefixIcon: Icon(Icons.search,color:Color(0xFFd8d8d8) ,),
                          ),
                        ),
                      ),
                    ),


                        SizedBox(height: 25,),
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: foundEvents.length,
                          itemBuilder: (context, index) {
                            return EventCardWidget(
                              foundEvent: foundEvents[index],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(color: Colors.transparent,);
                          },
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0.0, -305.0),
              child: Container(
                child: Text('Created Events',style: TextStyle(
                    color: Colors.white.withAlpha(240),
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),),
              ),
            ),  //the title


            Transform.translate(
                offset: const Offset(0.0, 300.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=>CreateEvent());
                  },
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

                          child: Text('Add Events',style: TextStyle(
                              color: adminprimarycolor,
                              fontWeight: FontWeight.w500
                          ),))
                  ),
                )
            )

          ],
        ),
      ),
    );
  }

  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];
    if (enteredKeyword.isEmpty ) {
      results = events;
    } else {
      results = events
          .where((place) =>
          place.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      foundEvents = results;
    });
  }

}
