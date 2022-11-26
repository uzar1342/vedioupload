import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

TextEditingController incalander1 = TextEditingController();
TextEditingController taxcalander1 = TextEditingController();
TextEditingController roadpermit1 = TextEditingController();

class incalander extends StatefulWidget {


  @override
  _incalanderState createState() => _incalanderState();
}

class _incalanderState extends State<incalander> {


  @override
  void initState() {
    incalander1.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2100));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
              DateFormat('dd-MM-yyyy').format(pickedDate);
              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              setState(() {
                incalander1.text =
                    formattedDate; //set output date to TextField value.
              });
            } else {}
          },
          child: TextField(
            enabled: false,
            controller: incalander1,
            //editing controller of this TextField
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: " Enter Date" //label text of field
            ),
            //set it true, so that user will not able to edit text
          ),
        ));
  }
}

class taxcalander extends StatefulWidget {
  const taxcalander({Key? key}) : super(key: key);

  @override
  State<taxcalander> createState() => _taxcalanderState();
}

class _taxcalanderState extends State<taxcalander> {
  @override
  void initState() {
    incalander1.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2100));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
              DateFormat('dd-MM-yyyy').format(pickedDate);
              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              setState(() {
                incalander1.text =
                    formattedDate; //set output date to TextField value.
              });
            } else {}
          },
          child: TextField(
            enabled: false,
            controller: taxcalander1,
            //editing controller of this TextField
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: " Enter Date" //label text of field
            ),
            //set it true, so that user will not able to edit text
          ),
        ));
  }
}

class roadpermit extends StatefulWidget {
  const roadpermit({Key? key}) : super(key: key);

  @override
  State<roadpermit> createState() => _roadpermitState();
}

class _roadpermitState extends State<roadpermit> {
  @override
  void initState() {
    incalander1.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2100));

            if (pickedDate != null) {
              print(
                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate =
              DateFormat('dd-MM-yyyy').format(pickedDate);
              print(
                  formattedDate); //formatted date output using intl package =>  2021-03-16
              setState(() {
                incalander1.text =
                    formattedDate; //set output date to TextField value.
              });
            } else {}
          },
          child: TextField(
            enabled: false,
            controller: roadpermit1,
            //editing controller of this TextField
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: " Enter Date" //label text of field
            ),
            //set it true, so that user will not able to edit text
          ),
        ));
  }
}

