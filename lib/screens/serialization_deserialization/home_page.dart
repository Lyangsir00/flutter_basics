import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_basics/model/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //creating user object
  UserModel userObject = UserModel(
      id: "001", fullname: "SumanGhale", email: "ghalesuman889@gmail.com");

//creating userjson
  String userJson =
      '{"id":"001","fullname": "SumanGhale", "email": "ghalesuman889@gmail.com"}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //serialization: convert userobject to Json
                    Map<String, dynamic> userMap = userObject.toMap();
                    var json = jsonEncode(userMap);
                    print(json.toString());
                  },
                  child: Text("Serialization")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    //deserialization: convert Json to userModel object
                    var decoded = jsonDecode(userJson);
                    Map<String, dynamic> userMap = decoded;
                    UserModel newUser = UserModel.fromMap(userMap);
                    print(newUser.toString());
                  },
                  child: Text("Deserialization"))
            ],
          ),
        ),
      ),
    );
  }
}
