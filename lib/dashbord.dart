import 'package:RYMSValuer/stepform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'main.dart';

class vehical extends StatefulWidget {
  const vehical({Key? key}) : super(key: key);

  @override
  State<vehical> createState() => _vehicalState();
}

class _vehicalState extends State<vehical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Vehical List',
          style: FlutterFlowTheme.of(context).subtitle2,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, position)
          {
            return GestureDetector(
              onTap: (){
                desFile="";
                Get.to(()=>( stepform(null)));
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                      10,0, 10, 10),
                                                  child: Text(
                                                    'MH01AE8017',
                                                    style: FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                                  ),
                                                ),
                                                Container(
                                                  width: 90,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF711414),
                                                    borderRadius: BorderRadius.only(
                                                      bottomLeft: Radius.circular(10),
                                                      bottomRight: Radius.circular(0),
                                                      topLeft: Radius.circular(0),
                                                      topRight: Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                        0, 10, 0, 0),
                                                    child: Text(
                                                      'MSCVSA',
                                                      textAlign: TextAlign.center,
                                                      style: FlutterFlowTheme.of(context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Color(0xFFEAEDEF),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                      10, 10, 10, 10),
                                                  child: Text(
                                                    'ARBAZ KHAN NISAR',
                                                    style: TextStyle(
                                                      color: Color(0xE47B7272),
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height:
                                              MediaQuery.of(context).size.height * 0.07,
                                              constraints: BoxConstraints(
                                                maxWidth: double.infinity,
                                                maxHeight: double.infinity,
                                              ),
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    10, 1, 1, 1),
                                                child: Text(
                                                  "KOHINOOR YARD | MIRA ROAD",
                                                  maxLines: 5,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF831111),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );

          }
      ),
    );
  }
}
