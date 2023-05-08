import 'package:flutter/material.dart';
import 'package:gradutionprojectadmin/adminEvents/event_model.dart';
import 'package:gradutionprojectadmin/constant/constants.dart';

class EventCardWidget extends StatelessWidget {
  EventCardWidget({
    Key? key,
    required this.foundEvent,
  }) : super(key: key);

  EventModel foundEvent;

  @override
  Widget build(BuildContext context) {
      return Container(
        width: 315,
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: adminprimarycolor),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child:   SizedBox(
                width: 80,
                height: 80,
                child: Image.network(
                  foundEvent.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120,

                    child: Text(foundEvent.name.toString(),style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                    ),
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,

                    ),
                  ),
                  Text(foundEvent.date.toString(),style: TextStyle(
                      letterSpacing: 2,
                      color: Color(0xFFb0b1ae),
                      fontSize: 10
                  ),),
                  Text('Avaliable',style: TextStyle(
                      color: primarycolor,
                      fontSize: 14
                  ))
                ],
              ),),

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

      );
  }
}