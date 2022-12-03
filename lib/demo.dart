import 'package:RYMSValuer/seconMain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dashbord.dart';
import 'firstpage.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'form1.dart';
import 'form2.dart';
import 'main.dart';
Map<String,dynamic> details={} ;
class tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabView Tutorial GFG',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

String iAndv="",f1="",f2="";



class HomePage extends StatefulWidget {
   HomePage({Key? key, this.file}) : super(key: key);
var file;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;
  @override
  void initState() {
    super.initState();
    print("object");
    tabController =  TabController(vsync: this, length: 3);
  }
  @override
  void dispose() {
    print("ob");
    tabController.dispose();
    super.dispose();
  }

  void refress()
  {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () {
              Get.offAll(()=>const dasbod());
            },
          ),
          title: Text(
            'Image and Vidio',
            style: FlutterFlowTheme.of(context).subtitle2,
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
          bottom:  TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Image And Vidio",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent,fontSize: 10),),
                    iAndv!=""?Icon(Icons.check,color: Colors.blue,):Container()
                  ],
                ),),
              ),
              Tab(
                  child:  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Form1",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent,fontSize: 10),),
                      f1!=""? Icon(Icons.check,color: Colors.blue,):Container()
                    ],
                  ),)
              ),
              Tab(
                  child: Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Form2",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent,fontSize: 10),),
                      f2!=""?Icon(Icons.check,color: Colors.blue,):Container()
                    ],
                  ),)
              ),
            ],
          ),
        ),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
          children: [
            ImageAndVidio(title: 'asd', file: widget.file, fun: ()=>{refress()},),
            ChecboxWidget(fun: ()=>{refress()}),
            form2(fun: ()=>{refress()}),

          ],
        ),
      ),
    );
  }
}
