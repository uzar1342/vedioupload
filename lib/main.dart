import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:video_compress/video_compress.dart';

import 'camera.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page', file: null,),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title,required this.file});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  var file;
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int percentage=0;

  final picker = ImagePicker();
  picvidio()
  async {

    final XFile? image = await picker.pickVideo(source: ImageSource.camera);
    setState(() {
      context.loaderOverlay.show();
    });
    showAlertDialog(context);
    final thumbnailFile = await VideoCompress.getFileThumbnail(
        image!.path,
        quality: 50, // default(100)
        position: -1 // default(-1)
    );
    uploadFileToServer(thumbnailFile!);
  }
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Padding(
        padding: EdgeInsets.all(15.0),
        child: LinearPercentIndicator(
          width: MediaQuery.of(context).size.width - 50,
          animation: true,
          lineHeight: 20.0,
          animationDuration: 1000,
          percent: percentage.toDouble(),
          animateFromLastPercent: true,
          center: Text(percentage.toString()),
          progressColor: Colors.red,
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  void uploadFileToServer(File imagePath) async {

    var dio = Dio();

    var formData = FormData.fromMap({
      'prop_id': '28',
      'file': await MultipartFile.fromFile(imagePath.path, filename: 'upload.mp4'),
    });

    try {
      var response = await dio.post(
          'https://propertystop.com/uploadVideos', data: formData,
          onSendProgress: (int sent, int total) {
            percentage    = ((sent / total) * 100).floor();
            setState(() {
              percentage=percentage;
            });

          });
      if(response.statusCode==200)
        {
          setState(() {
            context.loaderOverlay.hide();
          });
          Fluttertoast.showToast(msg: response.data.toString());
        }
      else
        {
          setState(() {
            context.loaderOverlay.hide();
          });
          Fluttertoast.showToast(msg: response.data.toString());
        }
    }
    catch (error) {
   print(error);
  }




  }

  final ImagePicker _picker = ImagePicker();
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  picimg(int index)
  async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera,imageQuality: 50);
    widget.file[index]=image;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: LoaderOverlay(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              widget.file==null?Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ):

              Container(
                  padding: EdgeInsets.all(12.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: widget.file.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                          onTap: (){
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text(
                                    "View Image",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  content: Container(
                                    child: SingleChildScrollView(
                                      child: Form(
                                        child: Column(
                                          children: [
                                        Image.file(File(widget.file[index]!.path)),
                                            Row(
                                              children: [
                                                ElevatedButton(onPressed: (){
                                                  setState(() {
                                                    Navigator.pop(context);
                                                    widget.file.removeAt(index);
                                                  });}, child: Text("Delect")),
                                                ElevatedButton(onPressed: (){
                                                  setState(() {
                                                    Navigator.pop(context);
                                                    picimg(index);
                                                  });}, child: Text("retake")),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ));
                          },
                          child: Image.file(File(widget.file[index]!.path)));
                    },
                  )),





            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final cameras = await availableCameras();
          final firstCamera = cameras[0];

          Navigator.push(context,
              MaterialPageRoute(builder:
                  (context) =>
                      TakePictureScreen(camera: firstCamera , title: ["1","2"],)
              ));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
