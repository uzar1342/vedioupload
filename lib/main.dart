import 'dart:io';
import 'dart:typed_data';
import 'package:path/path.dart' as path;
import 'package:camera/camera.dart';
import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:video_compress/video_compress.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:permission_handler/permission_handler.dart';
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

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page', file: null,),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title,required this.file});


  var file;


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
var vidio;
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int percentage=0;
  bool loadee=true;
  Directory findRoot(FileSystemEntity entity) {
    final Directory parent = entity.parent;
    if (parent.path == entity.path) return parent;
    return findRoot(parent);
  }
  final picker = ImagePicker();
//   picvidio()
//   async {
//     final XFile? image = await picker.pickVideo(source: ImageSource.camera);
//     MediaInfo? mediaInfo = await VideoCompress.compressVideo(
//       image!.path,
//       quality: VideoQuality.LowQuality,
//       deleteOrigin: false, // It's false by default
//     );
//
//     print(mediaInfo?.path);
// setState(() {
//   vidio=mediaInfo?.file;
// });
//
//
//   }


  Future<void> picvidio() async {
    var file;

      final picker = ImagePicker();
      var pickedFile = await  picker.pickVideo(source: ImageSource.camera);
      file = File(pickedFile!.path);

    if (file == null) {
      return;
    }
    print(file.path);
    await VideoCompress.setLogLevel(0);
    final info = await VideoCompress.compressVideo(
      file.path,
      quality: VideoQuality.MediumQuality,
      deleteOrigin: false,
      includeAudio: true,
    );
    print(info?.path);
    setState(() {
      file = info?.path!;
    });
  }



late int sdk;
getinfo()
  async {
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  final androidInfo = await deviceInfoPlugin.androidInfo;
  sdk=androidInfo.version.sdkInt;
  return androidInfo.version.sdkInt;
}
  save()
  async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
      await Permission.accessMediaLocation.request();
      if(sdk >= 30) {
        await Permission.manageExternalStorage.request();
      }
      return;
    }
    else
      {
        final directory = await getExternalStorageDirectory();
        var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/dir/${widget.title}').create(recursive: true);
        for(int i=0 ; i<int.parse(widget.file.length.toString());i++)
        {

          File(widget.file[i].path).copy("${directory1!.path}/$i.jpg");
        }

      }

  }
  String getFileName(String _path){
    return path.basename(_path);
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

  void uploadFileToServerimg() async {

    var dio = Dio();
    var formData = FormData();
    // for(int i=0 ; i<int.parse(widget.file.length.toString());i++) {
    //   formData.files.add(
    //   MapEntry("images", await MultipartFile.fromFile(widget.file[i].path)),
    // );
    // }

    formData.files.add(
        MapEntry("images", await MultipartFile.fromFile(vidio))
    );
    try {
      var response = await dio.post(
          'http://training.virash.in/uploadTesting', data: formData,
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
      setState(() {
        context.loaderOverlay.hide();
      });
      Fluttertoast.showToast(msg:error.toString());
  }




  }


  final ImagePicker _picker = ImagePicker();
  picimg(int index)
  async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera,imageQuality: 50);
    if(image!=null) {
      widget.file[index] = image;
      saveimg(image, index);
    }
    setState(() {
    });
  }
  @override
  void initState() {
    widget.file !=null?save():(){};
    getinfo();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LoaderOverlay(
        child: SingleChildScrollView(
          child: Center(
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
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: widget.file.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    title: const Text(
                                      "View Image",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    content: SingleChildScrollView(
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
                                  ));
                            },
                            child: Image.file(File(widget.file[index]!.path)));
                      },
                    )),
                ElevatedButton(onPressed: () async {
                  final directory = await getExternalStorageDirectory();
                  var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/dir/subdir').create(recursive: true);
                  final dir = Directory(directory1.path);
                  dir.deleteSync(recursive: true);

                  setState(() {
                    widget.file.clear();
                    widget.file==null;
                  });
                  Fluttertoast.showToast(msg: "Delete");
                }, child: const Text("Delete folder")),
                ElevatedButton(onPressed: () async {
                  picvidio();
                  Fluttertoast.showToast(msg: "vidio");
                }, child: const Text("vidio")),
                ElevatedButton(onPressed: () async {
                  setState(() {
                    context.loaderOverlay.show();
                  });
                  uploadFileToServerimg();
                }, child: const Text("send img"))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () async {
                var status = await Permission.storage.status;
                var list = List<String>.generate(20, (i) => (i + 1).toString());
                if (!status.isGranted) {
                  await Permission.storage.request();
                  await Permission.accessMediaLocation.request();
                  if(sdk >= 30) {
                    await Permission.manageExternalStorage.request();
                  }
                  return;
                }

                else
                  {

                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            TakePictureScreen( title: list, name: 'arbaz',)
                        ));
                  }


              },
              tooltip: 'Increment',
              child: const Icon(Icons.image),
            ),
          ),
          FloatingActionButton(
            onPressed: () async {
              var status = await Permission.storage.status;
              var list = List<String>.generate(20, (i) => (i + 1).toString());
              if (!status.isGranted) {
                await Permission.storage.request();
                await Permission.accessMediaLocation.request();
                if(sdk >= 30) {
                  await Permission.manageExternalStorage.request();
                }
                return;
              }

              else
                {

                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          TakePictureScreen( title: list, name: 'vipeen',)
                      ));
                }


            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  saveimg(file,int i)
  async {
    try {
      final directory = await getExternalStorageDirectory();
      var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/dir/${widget.title}').create(recursive: true);
      print(directory.path);
      File(file.path).copy("${directory1!.path}/$i.jpg");
    } catch (e) {
      return null;
    }
  }
}
