import 'dart:async';

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

  // Get json result and convert it to model. Then add
  Future<Null> getUserDetails() async {
    final response = await http.get(url);
    final responseJson = json.decode(response.body);

    setState(() {
      for (Map user in responseJson) {
        _userDetails.add(UserDetails.fromJson(user));
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
          child: _searchResult.length != 0 || controller.text.isNotEmpty
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
              :  ListView.builder(
            itemCount: _userDetails.length,
            itemBuilder: (context, index) {
              return  Card(
                margin: const EdgeInsets.all(0.0),
                child:  ListTile(
                  leading:  CircleAvatar(backgroundImage:  NetworkImage(_userDetails[index].profileUrl,),),
                  title:  GestureDetector(
                      onTap: (){
                        controller.text=_userDetails[index].lastName;
                       Navigator.pop(context);
                      },
                      child: Text('${_userDetails[index].firstName} ${_userDetails[index].lastName}')),
                ),
              );
            },
          ),
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
      if (userDetail.firstName.contains(text) || userDetail.lastName.contains(text))
        _searchResult.add(userDetail);
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
  final String firstName, lastName, profileUrl;

  UserDetails({required this.id, required this.firstName, required this.lastName, this.profileUrl = 'https://i.amz.mshcdn.com/3NbrfEiECotKyhcUhgPJHbrL7zM=/950x534/filters:quality(90)/2014%2F06%2F02%2Fc0%2Fzuckheadsho.a33d0.jpg'});

  factory UserDetails.fromJson(Map<dynamic, dynamic> json) {
    return UserDetails(
      id: json['id'],
      firstName: json['name'],
      lastName: json['username'],
    );
  }
}