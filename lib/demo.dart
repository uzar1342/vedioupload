import 'package:RYMSValuer/seconMain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dashbord.dart';
import 'firstpage.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'main.dart';
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

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

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
              Get.off(()=>vehical());
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

                child: Container(color: Colors.blue,child: Text("A"),),
              ),
              Tab(

                  child: Container(color: Colors.blue,child: Text("A"))
              ),
              Tab(

                  child: Container(color: Colors.blue,child: Text("A"))
              ),
            ],
          ),
        ),
        body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
          children: [
            ImageAndVidio(title: 'asd', file: null),
            firstPage(),
            mainScreen1()
          ],
        ),
      ),
    );
  }
}
