import 'package:RYMSValuer/searchedittext.dart';
import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'demo.dart';

class ChecboxWidget extends StatefulWidget {
   ChecboxWidget({Key? key, required  this.fun}) : super(key: key);
  Function() fun;
  @override
  _ChecboxWidgetState createState() => _ChecboxWidgetState();
}

class _ChecboxWidgetState extends State<ChecboxWidget> {
  String? radioButtonValue1;
  String? radioButtonValue2;
  String? radioButtonValue3;
  String? radioButtonValue4;
  String? radioButtonValue5;
  String? radioButtonValue6;
  String? radioButtonValue7;
  String? radioButtonValue8;
  final scaffoldKey = GlobalKey<ScaffoldState>();



  TextEditingController incalander1= TextEditingController();
  TextEditingController incalander2= TextEditingController();
  TextEditingController incalander3= TextEditingController();




  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext conte) {
        return  Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 500,
                    child: scrachbox(incalander3)),

              ],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    Future<void> date(TextEditingController incalander1)
    async {
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
    }
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'validation',
          style: FlutterFlowTheme.of(context).subtitle2,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                )
                ,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                )
                ,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ), Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                )
                ,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),

  Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                )
                ,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                )
                ,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ), Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1ljpjpopuoiklpoj[', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue1 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue2 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue3 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue4 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue5 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options:
                      ['Option', 'Option1', 'Option2', 'jkhjjhkjh'].toList(),
                      onChanged: (val) => setState(() => radioButtonValue6 = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander1);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
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
                          ),
                        )),
                  ),
                )
                ,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            date(incalander2);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander2,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Container(
                        child: GestureDetector(
                          onTap: () async {
                            _showMyDialog();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextField(
                              enabled: false,
                              controller: incalander3,
                              //editing controller of this TextField
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Enter Date" //label text of field
                              ),
                              //set it true, so that user will not able to edit text
                            ),
                          ),
                        )),
                  ),
                ),



                ElevatedButton(onPressed: (){
                 try
                 {
                   print(radioButtonValue1!+radioButtonValue4!);
                   f1="asd";
                   DefaultTabController.of(context)?.animateTo(2,duration: const Duration(seconds: 2));
                   widget.fun();
                 }
                 catch(e)
                  {
                    print("Fill form");
                  }





                }, child: Text("next"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
