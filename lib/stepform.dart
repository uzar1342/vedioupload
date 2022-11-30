import 'package:RYMSValuer/seconMain.dart' as p2;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coustemstepform.dart'as step;
import 'firstpage.dart' as p1;
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'main.dart';
class stepform extends StatefulWidget {
   stepform(var this.file, {Key? key}) : super(key: key);
var file;
  @override
  State<stepform> createState() => _stepformState();
}

class _stepformState extends State<stepform> {
  int _currentStep = 0;
  tapped(int step){
    setState(() => _currentStep = step);
  }
  continued(){
    _currentStep < 2 ?
    setState(() =>
    _currentStep += 1): null;
    // print(_currentStep);
    // if(_currentStep==0)
    //   {
    //     if(widget.file!=null&&m.desFile.trim()!="")
    //       {
    //         _currentStep < 2 ?
    //         setState(() =>
    //         _currentStep += 1): null;
    //       }
    //     else
    //       {
    //         Fluttertoast.showToast(msg: "Select Image And Vedio");
    //       }
    //   }
    // else if(_currentStep==1)
    // {
    //   print("object");
    //   if(vehicle!=null&&
    //       Vehicle_Category!=null&&
    //       incalander1.value.text.trim()!=""
    //       &&BodyType!=null&&
    //       p1.location!=null&&
    //       p1.make!=null&&p1.model!=null&&p1.variant!=null&&
    //       p1.colors!=null&&p1.transc!=null&&p1.Odometer.value.text.trim()!=""&&transmission1!=null
    //       &&fuel_type1!=null&&p1.vrn.value.text.trim()!=""&&
    //       p1.vehicles.value.text.trim()!=""&&
    //       p1.Noofowners.value.text.trim()!=""&&p1.Owners.value.text.trim()!=""&&
    //       p1.Enginenumber.value.text.trim()!=""&&p1.Enginecc.value.text.trim()!=""
    //       &&p1.Chassis.value.text.trim()!=""&&accident1!=null&&
    //       majorIssue1!=null&&vehicleInspection1!=null
    //   )
    //   {
    //     vehicle=null;Vehicle_Category=null
    //     ;BodyType=null;p1.location=null;p1.make=null;p1.model=null;p1.variant=null;
    //     p1.colors=null;p1.transc=null;transmission1=null
    //     ;fuel_type1=null;
    //     accident1=null;
    //     majorIssue1=null;
    //     vehicleInspection1=null;
    //     incalander1.text="";
    //     p1.vrn.text="";
    //     p1.Odometer.text="";
    //     p1.vehicles.text="";
    //     p1.Noofowners.text="";
    //     p1.Owners.text="";
    //     p1.Enginenumber.text="";
    //     p1.Enginecc.text="";
    //     p1.Chassis.text="";
    //     _currentStep < 2 ?
    //     setState(() =>
    //     _currentStep += 1): null;
    //   }
    //   else
    //   {
    //     Fluttertoast.showToast(msg: "Fill Form");
    //   }
    //
    // }
    // else if(_currentStep==2)
    //   {
    //     print("hj");
    //     if(d.regriUnit1!=null
    //         &&d.tailGate1!=null&&d.leftSidegt1!=null&& d.leftCondn1!=null&&
    //         d.rightSidegt1!=null&&d.RightCondtn1!=null
    //         &&d.loadBody1!=null&&d.overAll1!=null&&
    //         d.chassisCnd1!=null&&d.Tyres1!=null&&d.bumper1!=null&&d.lamps1!=null&&
    //         d.doorLeft1!=null&&d.doorRight1!=null&&d.dashboard1!=null&&d.ads1!=null&&
    //         d.ac1!=null&&p2.Nos.value.text.trim()!=""&&d.seatConf1!=null&&d.engineCnd1!=null
    //         &&
    //         d.engineOil1!=null
    //         &&d.forward1!=null&&d.backward1!=null &&
    //         d.padel1!=null&&d.vehicleCondition1!=null&&d.insuarance1!=null&&
    //         incalander1.value.text.trim()!=""&&taxcalander1.value.text.trim()!=""&&
    //         roadpermit1.value.text.trim()!=""&&d.hypo1!=null&&d.hpaBank1!=null&&
    //         fcvalidity1.value.text.trim()!=""&&VehicalLastService1.value.text.trim()!=""&&
    //         d.tyre11!=null&&d.tyre21!=null&&d.tyre31!=null&&d.tyre41!=null&&d.tyre51!=null&&
    //         d.tyre61!=null&&d.tyre71!=null&&d.tyre81!=null&&d.tyre91!=null&&d.tyre101!=null
    //         &&d.radCon1!=null&&d.diesalPump1!=null&&d.Ignit1!=null&&
    //         d.transmission1!=null&&d.gearShift1!=null&&d.transmissionc1!=null&&
    //         d.steeringType1!=null&&d.breaks1!=null&&d.axle1!=null&&d.diffrent1!=null&&
    //         d.suspension1!=null&&d.battery!=null&&d.stater1!=null&&d.alternator1!=null&&
    //         d.tankerBody1!=null&&d.vehicle1!=null)
    //     {
    //       d.tailGate1=null;d.leftSidegt1=null; d.leftCondn1=null;
    //       d.rightSidegt1=null;d.RightCondtn1=null
    //       ;d.loadBody1=null;d.overAll1=null;
    //       d.chassisCnd1=null;d.Tyres1=null;d.bumper1=null;d.lamps1=null;
    //       d.doorLeft1=null;d.doorRight1=null;d.dashboard1=null;d.ads1=null;
    //       d.ac1=null;d.seatConf1=null;d.engineCnd1=null;
    //       d.engineOil1=null;d.forward1=null;d.backward1=null;
    //       d.padel1=null;d.vehicleCondition1=null;d.insuarance1=null;
    //       d.hypo1=null;d.hpaBank1=null;
    //       d.tyre11=null;d.tyre21=null;d.tyre31=null;d.tyre41=null;d.tyre51=null;
    //       d.tyre61=null;d.tyre71=null;d.tyre81=null;d.tyre91=null;d.tyre101=null
    //       ;d.radCon1=null;d.diesalPump1=null;d.Ignit1=null;
    //       d.transmission1=null;d.gearShift1=null;d.transmissionc1=null;
    //       d.steeringType1=null;d.breaks1=null;d.axle1=null;d.diffrent1=null;
    //       d.suspension1=null;d.battery1=null;d.stater1=null;d.alternator1=null;
    //       d.tankerBody1=null;
    //       d.vehicle1=null;
    //       incalander1.text="";
    //       taxcalander1.text="";
    //       roadpermit1.text="";
    //       d.hypo1.text="";
    //       fcvalidity1.text="";
    //       VehicalLastService1.text="";
    //       Get.off(() => const vehical());
    //     }
    //     else
    //     {
    //       Fluttertoast.showToast(msg: "Fill Form");
    //     }
    //
    //
    //   }
  }
  cancel(){
    _currentStep > 0 ?
    setState(() => _currentStep -= 1) : null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Image',
          style: FlutterFlowTheme.of(context).subtitle2,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body:
      step.Stepper(
        type: step.StepperType.horizontal,
        physics: ScrollPhysics(),
        currentStep: _currentStep,
        onStepTapped: (step) => tapped(step),
        onStepContinue:  continued,
        steps: <step.Step>[
          step.Step(
            title:  const Text('Account'),
            content:
            Container(),
           // ImageAndVidio(title: 'asd', file: widget.file),
            isActive: _currentStep >= 0,
            state: _currentStep >= 0 ?
            step.StepState.complete : step.StepState.disabled,
          ),
          step.Step(
            title: new Text('Address'),
            content: Container(
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,child: const p1.firstPage()),
            isActive: _currentStep >= 0,
            state: _currentStep >= 1 ?
            step.StepState.complete : step.StepState.disabled,
          ),
          step.Step(
            title:  const Text('Mobile Number'),
            content: Container(
    height: MediaQuery.of(context).size.height,
    width:MediaQuery.of(context).size.width,child: const p2.mainScreen1()),
            isActive:_currentStep >= 0,
            state: _currentStep >= 2 ?
            step.StepState.complete : step.StepState.disabled,
          ),
        ],
      ),
    );



  }
}
