import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart'as mi;
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import 'flutter_flow_theme.dart';
import 'main.dart';

class TakePictureScreen extends StatefulWidget {
  TakePictureScreen({
    required this.camera,required this.title
  });
  int len=0;
  final CameraDescription camera;
  var title;

  bool camraloader=true;
  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool net = true;
  var file=[];
  bool loader =true;
  late String Address;
  XFile? image=null;
  late Image camerraImage;

  int len =20;
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an Attendence'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () =>{Navigator.pop(context)},
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }



  @override
  void initState() {
    print(widget.title);
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                    padding: const EdgeInsets.only(top: 0.0),
                    height: h * 0.09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              // top: 10.0,
                              left: 15.0,
                            ),
                            //padding: const EdgeInsets.only(left: 5.0),
                            height: h * 0.05,
                            width: h * 0.05,
                            decoration: BoxDecoration(
                              // color: primaryColor,
                                border: Border.all(color: Colors.black26, width: 1.0),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(12.0))),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black87,
                              size: 18.0,
                            ),
                          ),
                        ),
                        Text(
                          widget.len<2?widget.title[widget.len]:"Send",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const AttendancePage()));
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.chartArea,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    )),
              ),
              Expanded(
                flex: 6,
                child:widget.len<len? widget.camraloader?
                FutureBuilder<void>(
                  future: _initializeControllerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // If the Future is complete, display the preview.
                      return CameraPreview(_controller);
                    } else {
                      // Otherwise, display a loading indicator.
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ): Image.file(File(image!.path)):Image.file(File(file[file.length-1]!.path)),
              ),
              SizedBox(height: 5),
              widget.len<len?
              loader?
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(w*0.8, h*0.078),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),

                        onPressed: () async {
                          try {
                            await _initializeControllerFuture;
                            image  = await _controller!.takePicture();
                            if (!mounted) return;
                            // If the picture was taken, display it on a new screen.
                            setState(() {
                              loader=false;
                              widget.camraloader=false;
                            });
                            // Navigator.pushReplacement(context,
                            //     MaterialPageRoute(builder:
                            //         (context) =>
                            //             picview( file: image!)
                            //     ));


                          } catch (e) {
                            // If an error occurs, log the error to the console.
                            print(e);
                          }
                        }
                        , child: Text("Take picture",style: const TextStyle(fontSize: 25),))),
              ):
              Row(
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       widget.camraloader=true;
                       loader=true;
                     });
                   },
                   child: Container(
                     width: 80,
                     height: 80,
                     decoration: BoxDecoration(
                       color: FlutterFlowTheme.of(context).secondaryColor,
                       shape: BoxShape.circle,
                     ),
                     child: const Icon(
                       Icons.replay_sharp,
                       color: Colors.black,
                       size: 35,
                     ),
                   ),
                 ),
                 GestureDetector(
                   onTap: (){
                     if(widget.len<len) {
                       setState(() {
                       widget.camraloader=true;
                       widget.len=widget.len+1;
                       loader=true;
                     });
                       file.add(image);
                     }
                    else
                      {

                      }
                     },
                   child: Container(
                     width: 80,
                     height: 80,
                     decoration: BoxDecoration(
                       color: FlutterFlowTheme.of(context).secondaryColor,
                       shape: BoxShape.circle,
                     ),
                     child: Icon(
                       Icons.check,
                       color: Colors.black,
                       size: 30,
                     ),
                   ),
                 ),
               ],
             ):
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(w*0.8, h*0.078),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),

                        onPressed: () async {
                          try {
                           saveimg(file);
                          } catch (e) {
                            // If an error occurs, log the error to the console.
                            return ;
                          }
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder:
                                  (context) =>
                                  MyHomePage(title: 'asd', file: file,)
                              ));
                        }
                        , child: Text("Send",style: const TextStyle(fontSize: 25),))),
              )


            ],
          ),
        ),


    );
  }
  saveimg(List file)
  async {
    try {

      final directory = await getExternalStorageDirectory();
      if (directory != null) {
        print(directory.path);
        for(int i=0 ; i<int.parse(file.length.toString());i++)
          {
        print(i);
           File(file[1].path).copy('${directory.path}/${i}.png');
          }

      }
    } catch (e) {
      return null;
    }
  }
}

class picview extends StatelessWidget {
   picview({Key? key,required this.file}) : super(key: key);
   XFile file;
  @override
  Widget build(BuildContext context) {
    return Image.file(File(file!.path));
  }
}


