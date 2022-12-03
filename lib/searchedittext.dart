import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;



class scrachbox extends StatefulWidget {
  scrachbox(TextEditingController this.incalander3);
  TextEditingController incalander3;
  @override
  _scrachboxState createState() => new _scrachboxState();
}

class _scrachboxState extends State<scrachbox> {
  late TextEditingController controller ;
  bool loader=false;
  // Get json result and convert it to model. Then add
  Future<Null> getUserDetails() async {

    var response = await Dio().get('https://jsonplaceholder.typicode.com/users');
    print(response);




    setState(() {
      for (Map user in response.data) {
        _userDetails.add(UserDetails.fromJson(user));
        loader=true;
      }
    });
  }

  @override
  void initState() {
    controller = widget.incalander3;
    super.initState();

    getUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child:  Card(
            child:  ListTile(
              leading:  Icon(Icons.search),
              title:  TextField(
                controller: controller,
                decoration:  const InputDecoration(
                    hintText: 'Search', border: InputBorder.none),
                onChanged: onSearchTextChanged,
              ),
              trailing:  IconButton(icon:  const Icon(Icons.cancel), onPressed: () {
                controller.clear();
                onSearchTextChanged('');
              },),
            ),
          ),
        ),
        Expanded(
          child: _searchResult.isNotEmpty || controller.text.isNotEmpty
              ?  ListView.builder(
            itemCount: _searchResult.length,
            itemBuilder: (context, i) {
              return  GestureDetector(
                child: Card(
                  margin: const EdgeInsets.all(0.0),
                  child:  ListTile(
                    title:  GestureDetector(onTap:()=>{
                      print("object")
                    },child: Text('${_searchResult[i].firstName} ${_searchResult[i].lastName}')),
                  ),
                ),
              );
            },
          )
              :  loader?ListView.builder(
            itemCount: _userDetails.length,
            itemBuilder: (context, index) {
              return  Card(
                margin: const EdgeInsets.all(0.0),
                child:  ListTile(
                  title:  GestureDetector(
                      onTap: (){
                        controller.text=_userDetails[index].lastName;
                       Navigator.pop(context);
                      },
                      child: Text('${_userDetails[index].firstName} ${_userDetails[index].lastName}')),
                ),
              );
            },
          ):Scaffold(body: Center(child: const CircularProgressIndicator())),
        ),
      ],
    );
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _userDetails.forEach((userDetail) {
      if (userDetail.firstName.contains(text) || userDetail.lastName.contains(text)) {
        _searchResult.add(userDetail);
      }
    });

    setState(() {});
  }
}

List<UserDetails> _searchResult = [];

List<UserDetails> _userDetails = [];
final url =
Uri.parse('https://jsonplaceholder.typicode.com/users');

class UserDetails {
  final int id;
  final String firstName, lastName;

  UserDetails({required this.id, required this.firstName, required this.lastName});

  factory UserDetails.fromJson(Map<dynamic, dynamic> json) {
    return UserDetails(
      id: json['id'],
      firstName: json['name'],
      lastName: json['username'],
    );
  }
}