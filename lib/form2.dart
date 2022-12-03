import 'package:RYMSValuer/searchedittext.dart';
import 'package:RYMSValuer/test.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'demo.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'main.dart';

class form2 extends StatefulWidget {
  const form2({Key? key, required Set<void> Function() fun}) : super(key: key);

  @override
  _form2State createState() => _form2State();
}

class _form2State extends State<form2> {





  Future<void> _showMyDialog(TextEditingController incalander3) async {
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



  String? Chassis_Condition;
  String? Load_Body_Build;
  String? Refrigration_Unit;
  String? Tail_Gate;
  String? Left_Side_Gate_Type;
  String? Left_Side_Gate_Condition;
  String? Right_Side_Gate_Type;
  String? Right_Side_Gate_Condition;
  String? Load_Floor;
  String? Overall_Load_body;
  String? No_of_Tyres;
  String? Bumper_Front;
  String? Lamps_Head;
  String? Door_Left;
  String? Door_Right;
  String? Dashboard;
  String? ABS;
  String? AC;
  String? Seat_Configuration;
  String? Driver_Seats;
  String? Co_driver_Seats;
  String? Engine_Condition;
  String? Engine_Oil_Leaks;
  String? Radiator_Condenser;
  String? Diesel_Pump;
  String? Ignition_System;
  String? Transmission;
  String? Gearshift_Level;
  String? Clutch_Engagement;
  String? Steering_Type;
  String? Steering;
  String? Break_Type;
  String? Brakes;
  String? Axle_Configuration;
  String? Differential;
  String? Suspension_FandR;
  String? Battery;
  String? Stater;
  String? Alternator;
  String? Tanker_Body_Type;
  String? Vehicle_Cranks;
  String? Drive_Forward;
  String? Drive_Backward;
  String? Brake_Padel_Function;
  String? Current_Vehicle_Condition;
  String? Insuarance;
  String? Hypothecation;
  String? HPA;
  String? Tyre_1;
  String? Tyre_2;
  String? Tyre_3;
  String? Tyre_4;
  String? Tyre_5;
  String? Tyre_6;
  String? Tyre_7;
  String? Tyre_8;
  String? Tyre_9;
  String? Tyre_10;




  TextEditingController? No_of_Seats;
  TextEditingController? Insuarance_Validity;
  TextEditingController? Tax_Validity;
  TextEditingController? Road_permit;
  TextEditingController? FC_Validity;
  TextEditingController? Vehicle_Last_Service;



  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    No_of_Seats = TextEditingController();
    Insuarance_Validity = TextEditingController();
    Tax_Validity = TextEditingController();
    Road_permit = TextEditingController();
    FC_Validity = TextEditingController();
    Vehicle_Last_Service = TextEditingController();
  }

  @override
  void dispose() {
    No_of_Seats?.dispose();
    Insuarance_Validity?.dispose();
    Tax_Validity?.dispose();
    Road_permit?.dispose();
    FC_Validity?.dispose();
    Vehicle_Last_Service?.dispose();
    super.dispose();
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Load Body Build',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Normal Body',
                              'Aluminium Body',
                              'Wood Body',
                              'Company Body',
                              'Local Body'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Load_Body_Build = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Refrigration Unit',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => Refrigration_Unit = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Tail Gate',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Tail_Gate = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Left Side Gate Type',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Fixed', 'Floating'].toList(),
                            onChanged: (val) =>
                                setState(() => Left_Side_Gate_Type = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Left Side Gate Condition',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Left_Side_Gate_Condition = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Right Side Gate Type',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Fixed', 'Floating'].toList(),
                            onChanged: (val) =>
                                setState(() => Right_Side_Gate_Type = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Right Side Gate Condition',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Right_Side_Gate_Condition = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Load Floor',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Load_Floor = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Overall Load body',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Overall_Load_body = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Chassis Condition',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Chassis_Condition = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            ' No. of Tyres',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              ' 1',
                              ' 2',
                              ' 3',
                              ' 4',
                              ' 5',
                              ' 6',
                              ' 7',
                              ' 8',
                              ' 9',
                              '10',
                              '11',
                              '12',
                              '13',
                              '14',
                              '15',
                              '16',
                              '17',
                              '18',
                              '19',
                              '20',
                              '21',
                              '22',
                              '23',
                              '24'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => No_of_Tyres = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            ' Bumper (Front)',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Bumper_Front = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Lamps (Head)',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Lamps_Head = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Door Left',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Door_Left = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Door Right',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Door_Right = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Dashboard',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Dashboard = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'ABS',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => ABS = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'AC',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => AC = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'No. of Seats',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          controller: No_of_Seats,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '[Some hint text...]',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Seat Configuration',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Sleeper', 'Seater', 'semi-Sleeper', 'NA']
                                .toList(),
                            onChanged: (val) =>
                                setState(() => Seat_Configuration = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SelectionArea(
                          child: Text(
                            'Driver Seats',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Good', 'bad', 'None'].toList(),
                            onChanged: (val) =>
                                setState(() => Driver_Seats = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                          child: SelectionArea(
                              child: Text(
                                'Co-driver Seats',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: FlutterFlowRadioButton(
                                options: ['Good', 'bad', 'None'].toList(),
                                onChanged: (val) =>
                                    setState(() => Co_driver_Seats = val),
                                optionHeight: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                                textPadding:
                                EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor: Colors.blue,
                                inactiveRadioButtonColor: Color(0x8A000000),
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                          child: SelectionArea(
                              child: Text(
                                'Engine Condition',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: FlutterFlowRadioButton(
                                options: [
                                  'No Engine',
                                  'bad',
                                  'Average',
                                  'Good',
                                  'Excellent'
                                ].toList(),
                                onChanged: (val) =>
                                    setState(() => Engine_Condition = val),
                                optionHeight: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                                textPadding:
                                EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor: Colors.blue,
                                inactiveRadioButtonColor: Color(0x8A000000),
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Text(
                        'Engine Oil Leaks',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => Engine_Oil_Leaks = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Radiator/Condenser',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Radiator_Condenser = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Diesel Pump',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Diesel_Pump = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Ignition System',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Ignition_System = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Transmission',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Transmission = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Gearshift Level (Gear Enagagement)/Gear Level Play',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Gearshift_Level = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Clutch Engagement',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Clutch_Engagement = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Steering Type',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Manual', 'Power'].toList(),
                            onChanged: (val) =>
                                setState(() => Steering_Type = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Steering ',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Steering = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Break Type',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Normal', 'Air', 'Hydraulic'].toList(),
                            onChanged: (val) =>
                                setState(() => Break_Type = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Brakes',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Brakes = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Axle Configuration',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              '4x2',
                              '6x4',
                              '8x4',
                              '4x4',
                              '6x2',
                              '8x2',
                              '10x2',
                              '10x4',
                              '12x4'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Axle_Configuration = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Differential',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Differential = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Suspension (Front & Rear)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Very Bad',
                              'Bad',
                              'Average',
                              'Good',
                              'Very Good',
                              'Missing',
                              'NA'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Suspension_FandR = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Battery',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Satisfactory',
                              'Discharged',
                              'Unplugged',
                              'Missing',
                              'Key Not Available'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Battery = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Stater',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options:
                            ['Bad', 'Good', 'Missing', 'None'].toList(),
                            onChanged: (val) =>
                                setState(() => Stater = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Alternator',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options:
                            ['Bad', 'Good', 'Missing', 'None'].toList(),
                            onChanged: (val) =>
                                setState(() => Alternator = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tanker Body Type',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Stainless Steel', 'Mild Steel', 'NA']
                                .toList(),
                            onChanged: (val) =>
                                setState(() => Tanker_Body_Type = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Vehicle Cranks',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => Vehicle_Cranks = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Drive Forward',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => Drive_Forward = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Drive Backward',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => Drive_Backward = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Brake Padel Function',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => Brake_Padel_Function = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Current Vehicle Condition',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Running',
                              'Towed(Key NA,Battery NA, Missing, Breake)',
                              'Breakdown',
                              'Need Break'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => Current_Vehicle_Condition = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Insuarance',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options:
                            ['Company', 'Third Party', 'None'].toList(),
                            onChanged: (val) =>
                                setState(() => Insuarance = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Insuarance Validity',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          controller: Insuarance_Validity,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tax Validity',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          controller: Tax_Validity,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Road permit',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          controller: Road_permit,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Hypothecation',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) =>
                                setState(() => Hypothecation = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'HPA',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: FlutterFlowRadioButton(
                            options: [
                              'OTHERS',
                              'CHALAMANDALAM INVESTMENT AND FIANANCE COMPANY',
                              'INDULSIND BANK LTD',
                              ' MAHINDRA & MAHINDRA FINANCE SERVICE LTD MAHINDRA & MAHINDRA FINANCE SERVICE LTD',
                              'AU SMALL FINANCE BANK LTD',
                              ' HDB FINANCE SERVICE LIMITED',
                              'IDFC FIRST BANK',
                              'ESS KAY FINCARP LIMITED',
                              'YES BANK LTD',
                              'HDFC BANK LTD',
                              'TATA MOTORS FINANCE SOLUTION LTD',
                              'MAGMA FINCARP LTD',
                              'EQUITAS SMALL FINANCE BANK',
                              'KOTAK MAHINDRA BANK LTD',
                              'HERO FINCORP LTD',
                              'TATA CAPITAL FINANCE BANK LTD',
                              'FORTUNE INTEGRATED ASSETS FINANCE LTD',
                              'ADANI CAPITAL PRIVATE LIMITED',
                              'BAJAJ FINANCE LTD',
                              'MANAPURRAM FINANCE',
                              'HINDUJA LEYLAND FINANCE LTD',
                              'VASTU FINSERVE INDIA PRIVATE LIMITED'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => HPA = val),
                            optionHeight: 50,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textPadding:
                            EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'FC Validity',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          controller: FC_Validity,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Vehicle Last Service',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          controller: Vehicle_Last_Service,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 1 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_1 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 2 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_2 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 3 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_3 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 4 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_4 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 5 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_5 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 6 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_6 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 7 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_7 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 8 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_8 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 9 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_9 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'Tyre 10 (Percentage)',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FlutterFlowRadioButton(
                          options: ['0%', '25%', '50%', '75%', '90%'].toList(),
                          onChanged: (val) =>
                              setState(() => Tyre_10 = val),
                          optionHeight: 50,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        child: FFButtonWidget(
                          onPressed: () {
                            try
                            {
                              details['Chassis_Condition'] = Chassis_Condition!;
                              details['Load_Body_Build'] = Load_Body_Build! ;
                              details['Refrigration_Unit'] = Refrigration_Unit!;
                              details['Tail_Gate'] = Tail_Gate!;
                              details['Left_Side_Gate_Type'] = Left_Side_Gate_Type!;
                              details['Left_Side_Gate_Condition'] = Left_Side_Gate_Condition!;
                              details['Right_Side_Gate_Type'] = Right_Side_Gate_Type!;
                              details['Right_Side_Gate_Condition'] = Right_Side_Gate_Condition!;
                              details['Load_Floor'] = Load_Floor!;
                              details['Overall_Load_body'] = Overall_Load_body!;
                              details['No_of_Tyres'] = No_of_Tyres!;
                              details['Bumper_Front'] = Bumper_Front!;
                              details['Lamps_Head'] = Lamps_Head!;
                              details['Door_Left'] = Door_Left!;
                              details['Door_Right'] = Door_Right!;
                              details['Dashboard'] = Dashboard!;
                              details['ABS'] = ABS!;
                              details['AC'] = AC!;
                              details['Seat_Configuration'] = Seat_Configuration!;
                              details['Driver_Seats'] = Driver_Seats!;
                              details['Co_driver_Seats'] = Co_driver_Seats!;
                              details['Engine_Condition'] = Engine_Condition!;
                              details['Engine_Oil_Leaks'] = Engine_Oil_Leaks!;
                              details['Radiator_Condenser'] = Radiator_Condenser!;
                              details['Diesel_Pump'] = Diesel_Pump!;
                              details['Ignition_System'] = Ignition_System!;
                              details['Transmission'] = Transmission!;
                              details['Gearshift_Level'] = Gearshift_Level!;
                              details['Clutch_Engagement'] = Clutch_Engagement!;
                              details['Steering_Type'] = Steering_Type!;
                              details['Steering'] = Steering!;
                              details['Break_Type'] = Break_Type!;
                              details['Brakes'] = Brakes!;
                              details['Axle_Configuration'] = Axle_Configuration!;
                              details['Differential'] = Differential!;
                              details['Suspension_FandR'] = Suspension_FandR!;
                              details['Battery'] = Battery!;
                              details['Stater'] = Stater!;
                              details['Alternator'] = Alternator!;
                              details['Tanker_Body_Type'] = Tanker_Body_Type!;
                              details['Vehicle_Cranks'] = Vehicle_Cranks!;
                              details['Drive_Forward'] = Drive_Forward!;
                              details['Location'] = Drive_Backward!;
                              details['Drive_Backward'] = Brake_Padel_Function!;
                              details['Current_Vehicle_Condition'] = Current_Vehicle_Condition!;
                              details['Insuarance'] = Insuarance!;
                              details['Hypothecation'] = Hypothecation!;
                              details['HPA'] = HPA!;
                              details['Tyre_1'] = Tyre_1!;
                              details['Tyre_2'] = Tyre_2!;
                              details['Tyre_3'] = Tyre_3!;
                              details['Tyre_4'] = Tyre_4!;
                              details['Tyre_5'] = Tyre_5!;
                              details['Tyre_6'] = Tyre_6!;
                              details['Tyre_7'] = Tyre_7!;
                              details['Tyre_8'] = Tyre_8!;
                              details['Tyre_9'] = Tyre_9!;
                              details['Tyre_10'] = Tyre_10!;

                              if( No_of_Seats!.text!=""&&
                               Insuarance_Validity!.text!=""&&
                               Tax_Validity!.text!=""&&
                               Road_permit!.text!=""&&
                               FC_Validity!.text!=""&&
                               Vehicle_Last_Service!.text!="") {
                                details['No_of_Seats'] = No_of_Seats!.text;
                                details['Insuarance_Validity'] = Insuarance_Validity!.text;
                                details['Tax_Validity'] = Tax_Validity!.text;
                                details['Road_permit'] = Road_permit!.text;
                                details['FC_Validity'] = FC_Validity!.text;
                                details['Vehicle_Last_Service'] = Vehicle_Last_Service!.text;

                                Fluttertoast.showToast(msg: details.toString());
                                //  Get.offAll(()=>dasbod()); 
                                  Get.to(()=>test(detail: details,));
                              }
                             else
                               {
                                 Fluttertoast.showToast(msg: "Fill Form");
                               }
                            }
                            catch(e)
                            {
                              Fluttertoast.showToast(msg: "Fill Form");
                            }
                          },
                          text: 'Submit',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }




}
