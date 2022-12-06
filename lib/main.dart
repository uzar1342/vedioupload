import 'dart:io';
import 'dart:typed_data';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
import 'package:RYMSValuer/signup.dart';
import 'package:RYMSValuer/splacescreen.dart';
import 'camera.dart';
import 'dashbord.dart';
import 'demo.dart';
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
  bool net = true;
  var subscription;
  checkinternet() async {

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        setState(() {
          setState(() {

            net = false;

          });
        });
      } else {
        setState(() {
          net = true;
        });
      }
    });
  }
  @override
  void initState() {
    checkinternet();
    iAndv="";
    f1="";
    f2="";
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
                    icon: FontAwesomeIcons.car,
                    text: 'Vehicle entry',
                  ),
                  GButton(
                    icon: Icons.menu,
                    text: 'menu',
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
      title: 'RYMSValuer',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
      home:  const splacescreen()
    );
  }
}

class ImageAndVidio extends StatefulWidget {
   ImageAndVidio( {super.key, required this.title, required this.fun,required this.file});
  var file;
   Function fun;
  final String title;
  @override
  State<ImageAndVidio> createState() => _ImageAndVidioState();
}
var vidio;
class _ImageAndVidioState extends State<ImageAndVidio> {



  int _counter = 0;
  int percentage=0;
  bool loadee=true;

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
        var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/RYMSValuer/${widget.title}').create(recursive: true);
        for(int i=0 ; i<int.parse(widget.file.length.toString());i++)
        {
          File(widget.file[i].path).copy("${directory1!.path}/$i.jpg");
        }

      }

  }






  // void uploadFileToServer(File imagePath) async {
  //
  //   var dio = Dio();
  //
  //   var formData = FormData.fromMap({
  //     'prop_id': '28',
  //     'file': await MultipartFile.fromFile(imagePath.path, filename: 'upload.mp4'),
  //   });
  //
  //   try {
  //     var response = await dio.post(
  //         'https://propertystop.com/uploadVideos', data: formData,
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
  //  print(error);
  // }
  // }
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
  picimg(int index, String s)
  async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera,imageQuality: 50);
    if(image!=null) {
      s=="S"?singlepicfile[index]=image:widget.file[index] = image;
      saveimg(image, index);
    }
    setState(() {
    });
  }
  singpicimg(int index)
  async {

    final XFile? image = await _picker.pickImage(source: ImageSource.camera,imageQuality: 50);
    if(image!=null) {
      singlepicfile[index] = image;
      saveimg(image, index);
    }
    setState(() {
    });
  }
  permition()
  async {
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

  }
  @override
  void initState() {
    widget.file !=null?save():(){};
    permition();
    getinfo();
    super.initState();
  }
var selectedValue;
  var list=[
    "INVENTORY IMAGES",
    "VEHICLE IMAGES(FRONT)",
    "REAR IMAGES",
    "LEFT IMAGES",
    "RIGHT IMAGES",
    "INTERIOR FRONT IMAGES",
    "ENGINE IMAGES",
    "CHASIS IMAGES",
    "INTERIOR REAR IMAGES",
    "SPEEDOMETER IMAGES",
    "SPARE photo",
    "TYRE1 IMAGES",
    "TYRE2 IMAGES",
    "TYRE3 IMAGES",
    "TYRE4 IMAGES",
    "Step-ney tyre IMAGES",
    "VEHICLE EXIT DETAILS",
    "VEHICLE PHOTO with AGENT",
    "RELEASE LETTER IMAGES",
    "DOCUMENTS IMAGES"
  ];
List singlepicfile=List.filled(20, "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: LoaderOverlay(
        child:SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  if(desFile.trim()=="") {
                                    var status =
                                    await Permission.storage.status;
                                    var list = List<String>.generate(
                                        20, (i) => (i + 1).toString());
                                    if (!status.isGranted) {
                                      await Permission.storage.request();
                                      await Permission.accessMediaLocation
                                          .request();
                                      if (sdk >= 30) {
                                        await Permission.manageExternalStorage
                                            .request();
                                      }
                                      return;
                                    } else {
                                      _pickVideo();
                                    }
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-0.6, 0),
                                      child: Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                        child: Text(
                                          'Select Vidio',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context).bodyText1,
                                        ),
                                      ),
                                    ),
                                    desFile.trim()!=""?Icon(Icons.check):Container()
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  if(widget.file==null)
                                  {
                                    var status =
                                    await Permission.storage.status;
                                    if (!status.isGranted) {
                                      await Permission.storage.request();
                                      await Permission.accessMediaLocation
                                          .request();
                                      if (sdk >= 30) {
                                        await Permission.manageExternalStorage
                                            .request();
                                      }
                                      return;
                                    } else {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TakePictureScreen(
                                                    title: list,
                                                    name: 'arbaz',
                                                  )));
                                    }
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Setect mulli Image',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context).bodyText1,
                                      ),
                                    ),
                                    widget.file!=null?Icon(Icons.check):Container()
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
    //           Row(
    //             mainAxisSize: MainAxisSize.max,
    //             children: [
    //               desFile.trim()==""?Expanded(
    //                 child: GestureDetector(
    //                   onTap: () async {
    // var status = await Permission.storage.status;
    // var list = List<String>.generate(20, (i) => (i + 1).toString());
    // if (!status.isGranted) {
    // await Permission.storage.request();
    // await Permission.accessMediaLocation.request();
    // if(sdk >= 30) {
    // await Permission.manageExternalStorage.request();
    // }
    // return;
    // }
    //
    // else {
    //   _pickVideo();
    // }
    //                   },
    //                   child: Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                     child: Container(
    //                       width: 50,
    //                       height: 50,
    //                       decoration: BoxDecoration(
    //                         color: FlutterFlowTheme.of(context).secondaryBackground,
    //                         borderRadius: BorderRadius.circular(10),
    //                         border: Border.all(
    //                           color: FlutterFlowTheme.of(context).secondaryColor,
    //                           width: 1,
    //                         ),
    //                       ),
    //                       child: Row(
    //                         mainAxisSize: MainAxisSize.max,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: AlignmentDirectional(-0.6, 0),
    //                             child: Padding(
    //                               padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                               child: Text(
    //                                 'Select Video',
    //                                 textAlign: TextAlign.start,
    //                                 style: FlutterFlowTheme.of(context).bodyText1,
    //                               ),
    //                             ),
    //                           ),
    //                           Icon(
    //                             Icons.navigate_next,
    //                             color: Colors.black,
    //                             size: 24,
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ):
    //               Expanded(
    //                 child: GestureDetector(
    //                   onTap: (){
    //                   },
    //                   child: Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                     child: Container(
    //                       width: 50,
    //                       height: 50,
    //                       decoration: BoxDecoration(
    //                         color: FlutterFlowTheme.of(context).secondaryBackground,
    //                         borderRadius: BorderRadius.circular(10),
    //                         border: Border.all(
    //                           color: FlutterFlowTheme.of(context).secondaryColor,
    //                           width: 1,
    //                         ),
    //                       ),
    //                       child: Row(
    //                         mainAxisSize: MainAxisSize.max,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: AlignmentDirectional(-0.6, 0),
    //                             child: Padding(
    //                               padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                               child: Text(
    //                                 'Select Video',
    //                                 textAlign: TextAlign.start,
    //                                 style: FlutterFlowTheme.of(context).bodyText1,
    //                               ),
    //                             ),
    //                           ),
    //                           const Icon(
    //                             Icons.check,
    //                             color: Colors.black,
    //                             size: 24,
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           widget.file!=null? Row(
    //             mainAxisSize: MainAxisSize.max,
    //             children: [
    //               Expanded(
    //                 child: GestureDetector(
    //                   onTap: () async {
    //
    //                   },
    //                   child: Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                     child: Container(
    //                       width: 50,
    //                       height: 50,
    //                       decoration: BoxDecoration(
    //                         color: FlutterFlowTheme.of(context).secondaryBackground,
    //                         borderRadius: BorderRadius.circular(10),
    //                         border: Border.all(
    //                           color: FlutterFlowTheme.of(context).secondaryColor,
    //                           width: 1,
    //                         ),
    //                       ),
    //                       child: Row(
    //                         mainAxisSize: MainAxisSize.max,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: AlignmentDirectional(-0.6, 0),
    //                             child: Padding(
    //                               padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                               child: Text(
    //                                 'Select Image',
    //                                 textAlign: TextAlign.start,
    //                                 style: FlutterFlowTheme.of(context).bodyText1,
    //                               ),
    //                             ),
    //                           ),
    //                           Icon(
    //                             Icons.check,
    //                             color: Colors.black,
    //                             size: 24,
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ):
    //           Row(
    //             mainAxisSize: MainAxisSize.max,
    //             children: [
    //               Expanded(
    //                 child: GestureDetector(
    //                   onTap: () async {
    //                     var status = await Permission.storage.status;
    //                     var list = List<String>.generate(20, (i) => (i + 1).toString());
    //                     if (!status.isGranted) {
    //                       await Permission.storage.request();
    //                       await Permission.accessMediaLocation.request();
    //                       if(sdk >= 30) {
    //                         await Permission.manageExternalStorage.request();
    //                       }
    //                       return;
    //                     }
    //
    //                     else
    //                     {
    //
    //                       Navigator.pushReplacement(context,
    //                           MaterialPageRoute(builder:
    //                               (context) =>
    //                               TakePictureScreen( title: list, name: 'arbaz',)
    //                           ));
    //                     }
    //
    //
    //                   },
    //                   child: Padding(
    //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                     child: Container(
    //                       width: 50,
    //                       height: 50,
    //                       decoration: BoxDecoration(
    //                         color: FlutterFlowTheme.of(context).secondaryBackground,
    //                         borderRadius: BorderRadius.circular(10),
    //                         border: Border.all(
    //                           color: FlutterFlowTheme.of(context).secondaryColor,
    //                           width: 1,
    //                         ),
    //                       ),
    //                       child: Row(
    //                         mainAxisSize: MainAxisSize.max,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: AlignmentDirectional(-0.6, 0),
    //                             child: Padding(
    //                               padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
    //                               child: Text(
    //                                 'Select Image',
    //                                 textAlign: TextAlign.start,
    //                                 style: FlutterFlowTheme.of(context).bodyText1,
    //                               ),
    //                             ),
    //                           ),
    //                           const Icon(
    //                             Icons.navigate_next,
    //                             color: Colors.black,
    //                             size: 24,
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),


              widget.file!=null? Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
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
                                            });}, child: Text("Delete")),
                                          ElevatedButton(onPressed: (){
                                            setState(() {
                                              Navigator.pop(context);
                                              picimg(index,"M");
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
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Container(

                                child: Image.file(
                                  File(widget.file[index]!.path),
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ,
                              Align(
                                alignment: AlignmentDirectional(0.02, 0.95),
                                child: Container(
                                  width: 150,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    list[index],
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },

                ),
              ):
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:  singlepicfile.length,
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
                        singlepicfile[index]!=""?showDialog(
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
                                      Image.file(File(singlepicfile[index]!.path)),
                                      Row(
                                        children: [
                                          ElevatedButton(onPressed: (){
                                            setState(() {
                                              Navigator.pop(context);
                                              singlepicfile.removeAt(index);
                                            });}, child: const Text("Delete")),
                                          ElevatedButton(onPressed: (){
                                            setState(() {
                                              Navigator.pop(context);
                                              picimg(index,"S");
                                            });}, child: const Text("retake")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )):singpicimg(index);
                      },
                      child:  Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Stack(
                            children: [
                          singlepicfile[index]!=""?Container(

                            child: Image.file(
                            File(singlepicfile[index]!.path),
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                                ),
                          ):
                          Image.asset("asset/pi.png"),
                              Align(
                                alignment: AlignmentDirectional(0.02, 0.95),
                                child: Container(
                                  width: 150,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    list[index],
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },

                ),
              ),
      ElevatedButton(onPressed: (){

        print(singlepicfile.toString());
        if(widget.file==null) {
                      int c = 0;
                      for (var x in singlepicfile) {
                        if (x.toString().trim() == "") {
                          c++;
                        }
                      }
                      if (c == 0 && desFile.trim()!="") {
                        iAndv="kdf";
                        widget.fun();
                        context.loaderOverlay.hide();
                        details['file']=singlepicfile;
                        details["vidio"]=desFile;
                        DefaultTabController.of(context)?.animateTo(1);

                      }
                      else
                        {
                          context.loaderOverlay.hide();
                          Fluttertoast.showToast(msg: "Select All image And Video");
                        }

                     // DefaultTabController.of(context)?.notifyListeners();

                    }

        else
          {
            if(desFile.trim()!="") {
              details['file']=widget.file;
              details["vidio"]=desFile;
              iAndv="kdf";
              widget.fun();
              DefaultTabController.of(context)?.animateTo(1);
            }
            else
              {

                Fluttertoast.showToast(msg: "Select Video");
              }
          }
                  }, child: Text("Next"))
            ],
          ),
        )
        ,
      ),
    );
  }
  saveimg(file,int i)
  async {
    try {
      final directory = await getExternalStorageDirectory();
      var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/RYMSValuer/${widget.title}').create(recursive: true);
      print(directory.path);
      File(file.path).copy("${directory1!.path}/$i.jpg");
    } catch (e) {
      return null;
    }
  }
}
