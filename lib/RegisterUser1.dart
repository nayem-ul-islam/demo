import 'package:flutter/material.dart';
import 'Test-API.dart';
import 'Test.dart';

class RegisterUser1 extends StatefulWidget {
  const RegisterUser1({Key? key}) : super(key: key);

  @override
  _RegisterUser1State createState() => _RegisterUser1State();
}

class _RegisterUser1State extends State<RegisterUser1> {
  late Future<Test> futureTest;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchTest(),
          builder: (context, AsyncSnapshot<List<Test>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return Text('${snapshot.data}');
                },
              );
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
