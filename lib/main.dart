import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:camera/camera.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:light_compressor/light_compressor.dart';
import 'package:vedioupload/signup.dart';
import 'package:vedioupload/splacescreen.dart';
import 'camera.dart';
import 'dashbord.dart';
import 'firstpage.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'flutter_flow_theme.dart';
import 'menus.dart';



List<Widget> _widgetOptions=[] ;
void main() {
  runApp(const vidioupload());
}
String desFile="";
class dasbod extends StatefulWidget {
  const dasbod({Key? key}) : super(key: key);

  @override
  State<dasbod> createState() => _dasbodState();
}
int _selectedIndex = 0;
class _dasbodState extends State<dasbod> {
  @override
  void initState() {
    _widgetOptions = <Widget>[
      vehical(),
      ProfWidget()
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:
        _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar:  Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: Icons.image,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: 'Likes',
                  ),

                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      );




  }
}



class vidioupload extends StatelessWidget {
  const vidioupload({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
      home:  const splacescreen()
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



  Future<String> get _destinationFile async {
    String directoryp;
    final String videoName = '${DateTime.now().millisecondsSinceEpoch}.mp4';
    final directory = await getExternalStorageDirectory();
    var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/dir/${widget.title}').create(recursive: true);

    if (Platform.isAndroid) {

      directoryp = directory1.path;
      return File('$directoryp/$videoName').path;
    } else {
      return File('$directory/$videoName').path;
    }
  }

  String? _displayedFile;
  late int _duration;
  String? _failureMessage;
  String? _filePath;
  bool _isVideoCompressed = false;
  final LightCompressor _lightCompressor = LightCompressor();
  Future<void> _pickVideo() async {

    setState(() {
      context.loaderOverlay.show();
    });
    var file;

    final picker = ImagePicker();
    var pickedFile = await  picker.pickVideo(source: ImageSource.camera);
    file = File(pickedFile!.path);

    if (file == null) {
      return;
    }

    _isVideoCompressed = false;



    _filePath = file.path;

    setState(() {
      _failureMessage = null;
    });

    desFile = await _destinationFile;
    final Stopwatch stopwatch = Stopwatch()..start();
    final dynamic response = await _lightCompressor.compressVideo(
        path: _filePath!,
        destinationPath: desFile,
        videoQuality: VideoQuality.very_low,
        isMinBitrateCheckEnabled: false,
        iosSaveInGallery: false);
    stopwatch.stop();
    final Duration duration =
    Duration(milliseconds: stopwatch.elapsedMilliseconds);
    _duration = duration.inSeconds;

    if (response is OnSuccess) {
      desFile = response.destinationPath;
      print(_duration);
      setState(() {
        context.loaderOverlay.hide();
        _displayedFile = desFile;
        _isVideoCompressed = true;
      });
    } else if (response is OnFailure) {

      setState(() {
        context.loaderOverlay.hide();
        _failureMessage = response.message;
      });
    } else if (response is OnCancelled) {
      setState(() {
        context.loaderOverlay.hide();
      });
      print(response.isCancelled);
    }
  }


  static Future<String> ReduceSizeAndType(videoPath, outDirPath) async {
    final FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();
    assert(File(videoPath).existsSync());

    final arguments = '-y -i $videoPath -preset ultrafast -g 48 -sc_threshold 0 -c:v libx264 -b:v 720k -c:a copy "$outDirPath/file2.mp4"';

    final int rc = await _flutterFFmpeg.execute(arguments);
    assert(rc == 0);

    return outDirPath;
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
    setState(() {
      context.loaderOverlay.show();
    });
    final Stopwatch stopwatch = Stopwatch()..start();
    var request = http.MultipartRequest('POST', Uri.parse("http://training.virash.in/uploadTesting"));
    for(int i=0 ; i<int.parse(widget.file.length.toString());i++) {
          request.files.add(
              http.MultipartFile(
                  'images',
                  File(widget.file[i].path).readAsBytes().asStream(),
                  File(widget.file[i].path).lengthSync(),
                  filename: "$i.jpg"
              )
         );
         }
    request.files.add(
        http.MultipartFile(
            'video',
            File(desFile).readAsBytes().asStream(),
            File(desFile).lengthSync(),
            filename: "uploadvid.mp4"
        )
    );
    var res = await request.send();
    if(res.statusCode==200)
    {
      print(request.fields);
      setState(() {
        context.loaderOverlay.hide();
      });
      Fluttertoast.showToast(msg: res.statusCode.toString());
    }
    else
    {
      setState(() {
        context.loaderOverlay.hide();
      });
      print(request.toString());
      Fluttertoast.showToast(msg: res.statusCode.toString());
    }
  //   var dio = Dio();
  //   var formData = FormData();
  //   for(int i=0 ; i<int.parse(widget.file.length.toString());i++) {
  //     formData.files.add(
  //     MapEntry("images", await MultipartFile.fromFile(widget.file[i].path)),
  //   );
  //   }
  //   formData.files.add(
  //       MapEntry("images", await MultipartFile.fromFile(_desFile))
  //   );
  //   try {
  //     var response = await dio.post(
  //         'http://training.virash.in/uploadTesting', data: formData,
  //         onSendProgress: (int sent, int total) {
  //           percentage    = ((sent / total) * 100).floor();
  //           setState(() {
  //             percentage=percentage;
  //           });
  //
  //         });
  //     if(response.statusCode==200)
  //       {
  //         setState(() {
  //           context.loaderOverlay.hide();
  //         });
  //         Fluttertoast.showToast(msg: response.data.toString());
  //       }
  //     else
  //       {
  //         setState(() {
  //           context.loaderOverlay.hide();
  //         });
  //         Fluttertoast.showToast(msg: response.data.toString());
  //       }
  //   }
  //   catch (error) {
  //     setState(() {
  //       context.loaderOverlay.hide();
  //     });
  //     Fluttertoast.showToast(msg:error.toString());
  // }



    stopwatch.stop();
    final Duration duration =
    Duration(milliseconds: stopwatch.elapsedMilliseconds);
    _duration = duration.inSeconds;
    print("upload time"+duration.toString());
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
var selectedValue;
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
      body: LoaderOverlay(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                desFile.trim()==""?Expanded(
                  child: GestureDetector(
                    onTap: (){
                      _pickVideo();
                    },
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.6, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                child: Text(
                                  'Select Vidio',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ):
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.6, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                child: Text(
                                  'Select Vidio',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.check,
                              color: Colors.black,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            widget.file!=null? Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {



                  },
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.6, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                child: Text(
                                  'SelectImage',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.check,
                              color: Colors.black,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ): Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
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

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder:
                                (context) =>
                                TakePictureScreen( title: list, name: 'arbaz',)
                            ));
                      }


                    },
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.6, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                child: Text(
                                  'SelectImage',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
           widget.file!=null? Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: GridView.builder(
                  itemCount:  widget.file.length,
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
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
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Image.file(
                                File(widget.file[index]!.path),
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Front Side',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                    );
                  },

                ),
              ),
            ):Container(),
            FFButtonWidget(
              onPressed: () {

                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) =>
                            firstPage()
                    ));
              },
              text: 'Next',
              options: FFButtonOptions(
                width: 150,
                height: 50,
                color: Colors.blue,
                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                elevation: 2,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            )
          ],
        )
        ,
      ),

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
