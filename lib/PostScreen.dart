import 'dart:async';
import 'dart:convert';
import 'package:demo/Test-API.dart';
import 'package:demo/Test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<Test> _postList = [];

  Future<List<Test>> fetchPost() async {
    final response = await http.get(Uri.parse('http://10.0.2.2/test.php'));

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      List<dynamic> values = new List.empty();
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            _postList.add(Test.fromMap(map));
            debugPrint('Id-------${map['id']}');
          }
        }
      }
      return _postList;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    fetchTest();
  }

  @override
  void setState(VoidCallback fn) {
    // ignore: todo
    // TODO: implement setState
    super.setState(fetchTest);
  }
}
