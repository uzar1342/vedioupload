import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:RYMSValuer/secondpage.dart';
import 'package:RYMSValuer/secondpage.dart' as d;


import 'Calendar.dart';
import 'dashbord.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'main.dart';

class mainScreen1 extends StatefulWidget {
  const mainScreen1({Key? key}) : super(key: key);

  @override
  State<mainScreen1> createState() => _mainScreen1State();
}
TextEditingController Nos=new TextEditingController();
class _mainScreen1State extends State<mainScreen1> {

  @override
  Widget build(BuildContext context) {
    return

    SingleChildScrollView(
      child: Column(
        children: [
        SizedBox(height: 7,),
          Container(
            height: 50,
            child: const ListTile(
              title: Text("Refrigirator Unit",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: regriUnit() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Tail Gate",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: tailGate() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 50,
            child: ListTile(
              title: Text("Left Side Gate Type",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: leftSide() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Left Side Gate Condition",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: leftCondn() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 50,
            child: ListTile(
              title: Text("Right Side Gate Type ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: rightSide() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Right Side Gate Condition ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: RightCondtn() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Load Floor ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: loadBody() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Overall Load Body ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: overAll() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Chassis Condition ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: chassisCnd() ,
            ),
          ),const SizedBox(height: 32,),
          SizedBox(
            height: 300,
            child: const ListTile(
              title: Text("No. of Tyres",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: Tyres() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Bumper(Front) ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: bumper() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Lamps(Head)",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: lamps() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Door Left",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: doorLeft() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Door Right",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: doorRight() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("DashBoard",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: dashboard() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 50,
            child: ListTile(
              title: Text("ABS",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: abs() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 50,
            child: ListTile(
              title: Text("AC",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: ac() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            child: ListTile(
              title: Text("Number of Seat",
                  style : TextStyle(
                    fontSize: 17,
                  )),
              subtitle: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ) ,

                child: TextField(
                  controller: Nos,
                  keyboardType: TextInputType. number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter. digitsOnly
                  ], // Only numbers can be entered.
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText: " Only in Numbers",
                  ),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Seat Configuration",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: seatConf() ,
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Engine Condition",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: engineCnd() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 50,
            child: ListTile(
              title: Text("Engine Oil Leaks",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: engineOil() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Radiator/Condenser",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: radCon() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Diesel Pump",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: diesalPump() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Ignition System",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: Ignit() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Transmission",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: transmission() ,
            ),
          ),
                  SizedBox(height: 32,),
          Container(
            height: 150,
            child: const ListTile(
              title: Text("Gearshift Level (Gear Engagement )/ Gear Level Play",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: gearShift() ,
            ),
          ),
                  SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Clutch Engagement",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: transmissionc() ,
            ),
          ),   SizedBox(height: 32,),
          Container(
            height: 150,
            child: const ListTile(
              title: Text("Steering Type",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: steeringType() ,
            ),
          ),   SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Clutch Engagement",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: clutch() ,
            ),
          ),   SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Breaks",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: breaks() ,
            ),
          ),     SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Axle Configuration",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: axle() ,
            ),
          ),   SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Differential ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: diffrent() ,
            ),
          ),   SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Suspension (Front & Rear) ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: suspension() ,
            ),
          ), SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Battery ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: battery() ,
            ),
          ), SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Stater ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: stater() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Alternator ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: alternator() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tanker Body Type ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: tankerBody() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 50,
            child: ListTile(
              title: Text("Vehicle Cranks ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: vehicle() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 50,
            child: ListTile(
              title: Text("Drive Forward ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: forward() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 50,
            child: const ListTile(
              title: Text("Drive Backward ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: backward() ,
            ),
          ),const SizedBox(height: 32,),
          const SizedBox(
            height: 50,
            child: ListTile(
              title: Text("Break Padel Function ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: padel() ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 150,
            child: ListTile(
              title: Text("Current Vehicle Condition ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: vehicleCondition() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Insuarance ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle: insuarance() ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 60,
            child: ListTile(
              title: Text("Insuarance Validity ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:Container(
                decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),                 child:incalander(),
              )  ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 60,
            child: ListTile(
              title: Text("Tax Validity ",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:Container(
                decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),                 child:taxcalander(),
              )  ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 60,
            child: ListTile(
              title: Text("Road Permit",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:Container(
                decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),                 child:roadpermit(),
              )  ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 60,
            child: ListTile(
              title: Text("Hypo",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:Container(
                       child:hypo(),
              )  ,
            ),
          ),SizedBox(height: 32,),
          Container(
            height: 800,
            child: ListTile(
              title: Text("HPA Bank",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:Container(
                       child:hpaBank(),
              )  ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 60,
            child: ListTile(
              title: Text("FC Validity",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),                 child:Fcvalidity(),
              )  ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 60,
            child: ListTile(
              title: Text("vehicle Last Service",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),                 child:VehicalLastService(),
              )  ,
            ),
          ),
          SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 1",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre1(),
              )  ,
            ),
          SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 2",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre2(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 3",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre3(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 4",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre4(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 5",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre5(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 6",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre6(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 7",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre7(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 8",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre8(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 9",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre9(),
              )  ,
            ),SizedBox(height: 32,),
          Container(
            height: 100,
            child: ListTile(
              title: Text("Tyre 10",
                  style: TextStyle(
                    fontSize: 17,
                  )),
              subtitle:tyre10(),
              )  ,
            ),
          SizedBox(height: 32),
          Container(
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
              color: Colors.blue,
              onPressed: () {
                print(steeringType1);
                if(d.regriUnit1!=null
                    &&d.tailGate1!=null&&d.leftSidegt1!=null&& d.leftCondn1!=null&&
                    d.rightSidegt1!=null&&d.RightCondtn1!=null
                    &&d.loadBody1!=null&&d.overAll1!=null&&
                    d.chassisCnd1!=null&&d.Tyres1!=null&&d.bumper1!=null&&d.lamps1!=null&&
                    d.doorLeft1!=null&&d.doorRight1!=null&&d.dashboard1!=null&&d.ads1!=null&&
                    d.ac1!=null&&Nos.value.text.trim()!=""&&d.seatConf1!=null&&d.engineCnd1!=null&&
                    d.engineOil1!=null
                    &&d.forward1!=null&&d.backward1!=null &&
                    d.padel1!=null&&d.vehicleCondition1!=null&&d.insuarance1!=null&&
                    incalander1.value.text.trim()!=""&&taxcalander1.value.text.trim()!=""&&
                    roadpermit1.value.text.trim()!=""&&d.hypo1!=null&&d.hpaBank1!=null&&
                    fcvalidity1.value.text.trim()!=""&&VehicalLastService1.value.text.trim()!=""&&
                    d.tyre11!=null&&d.tyre21!=null&&d.tyre31!=null&&d.tyre41!=null&&d.tyre51!=null&&
                    d.tyre61!=null&&d.tyre71!=null&&d.tyre81!=null&&d.tyre91!=null&&d.tyre101!=null
                    &&d.radCon1!=null&&d.diesalPump1!=null&&d.Ignit1!=null&&
                d.transmission1!=null&&d.gearShift1!=null&&d.transmissionc1!=null&&
                    d.steeringType1!=null&&d.breaks1!=null&&d.axle1!=null&&d.diffrent1!=null&&
                    d.suspension1!=null&&d.battery!=null&&d.stater1!=null&&d.alternator1!=null&&
                    d.tankerBody1!=null&&d.vehicle1!=null)
                  {
                d.tailGate1=null;d.leftSidegt1=null; d.leftCondn1=null;
                d.rightSidegt1=null;d.RightCondtn1=null
                ;d.loadBody1=null;overAll1=null;
                d.chassisCnd1=null;d.Tyres1=null;d.bumper1=null;d.lamps1=null;
                d.doorLeft1=null;d.doorRight1=null;d.dashboard1=null;d.ads1=null;
                d.ac1=null;d.seatConf1=null;d.engineCnd1=null;
                d.engineOil1=null;d.forward1=null;d.backward1=null;
                d.padel1=null;d.vehicleCondition1=null;d.insuarance1=null;
               d.hypo1=null;d.hpaBank1=null;
                d.tyre11=null;d.tyre21=null;d.tyre31=null;d.tyre41=null;d.tyre51=null;
                d.tyre61=null;d.tyre71=null;d.tyre81=null;d.tyre91=null;d.tyre101=null
                ;d.radCon1=null;d.diesalPump1=null;d.Ignit1=null;
                d.transmission1=null;d.gearShift1=null;d.transmissionc1=null;
                d.steeringType1=null;d.breaks1=null;d.axle1=null;d.diffrent1=null;
                d.suspension1=null;d.battery1=null;d.stater1=null;d.alternator1=null;
                d.tankerBody1=null;
                d.vehicle1=null;
                    incalander1.text="";
                    taxcalander1.text="";
                    roadpermit1.text="";
                    fcvalidity1.text="";
                    VehicalLastService1.text="";

                  }
                else
                {
                  Fluttertoast.showToast(msg: "Fill Form");
                }
                Get.off(()=>(vehical()));
              },
              child:const Text("Submit", style: TextStyle(
                fontSize: 20, color: Colors.white,
              )),
            ),
          )

        ],
      ),
    );

  }
}