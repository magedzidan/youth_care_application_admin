library create_event.dart;

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradutionprojectadmin/constant/constants.dart';
import 'package:gradutionprojectadmin/createEvent/widgets/custom_appbar.dart';
import 'package:gradutionprojectadmin/createEvent/widgets/mytext.dart';

import 'package:image_picker/image_picker.dart';

part 'parts/create_event_titlecontent.dart';
part 'parts/create_event_submitbutton.dart';
part 'parts/create_event_descriptioncontent.dart';

part 'parts/create_event_selectimage.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);
  static const routeName = '/create-event';
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final _formKey = GlobalKey<FormState>();
  int selectValue = 0;
  List items = ["Sosyal Sorumluluk"];
  var productTitle = '';
  File? _image;

  final TextEditingController categoryController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  File? image;

  Future<void> getCategories() async {
  /*  await FirebaseFirestore.instance
        .collection('categroies')
        .get()
        .then((value) {
      setState(() {
        items = value.docs.map((e) => e.data()['name']).toList();
      });
    });*/
    items =['football','teniis','backetball'];
  }

  @override
  void initState() {
    getCategories();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        headline: 'Create Event',
        isBackButton: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 10, right: 10),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            //select Photo
                            AddImageContainer(_image),

                            //select Event Title
                            EventTitleContent(titleController: titleController),

                            // add event description
                            EventDescriptionContent(
                              descriptionController: descriptionController,
                            ),

                            selectCategory(),
                          ],
                        ),
                        SizedBox(
                          height:MediaQuery.of(context).size.height * 1 / 11,
                          child: SubmitButton(
                            formKey: _formKey,
                            categoryController: categoryController,
                            titleController: titleController,
                            descriptionController: descriptionController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container selectCategory() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(items[selectValue].toString(), 20, Colors.black),
          SizedBox(
            height: 50,
            width: 200,
            child: CupertinoButton(
                color: primarycolor,

                child: const SizedBox(
                    //height: 150,
                    // color: Colors.black,
                    width: 250,
                    child: Text(
                      "Select Category",
                      style: TextStyle(fontSize: 10),
                    )),
                onPressed: () {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (context) => CupertinoActionSheet(
                            actions: [BuildPickerOfCategory()],
                            cancelButton: CupertinoActionSheetAction(
                              child: const Text("Pick"),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ));
                }),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox BuildPickerOfCategory() {
    return SizedBox(
      height: 400,
      child: CupertinoPicker(
        itemExtent: 60,
        looping: true,
        onSelectedItemChanged: (int value) {
          setState(() {
            selectValue = value;
          });
        },
        children: items
            .map((e) => Center(
                    child: Text(
                  e,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                )))
            .toList(),
      ),
    );
  }
}
