import 'package:flutter/material.dart';
//import 'main.dart';

class DeptList extends StatefulWidget {
  @override
  _DeptListState createState() => _DeptListState();
}

class _DeptListState extends State<DeptList> {
  Map data = {};
  @override
  Widget build(BuildContext context) {

  data = ModalRoute.of(context).settings.arguments;
  print(data);

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: Icon(Icons.list_alt_outlined),
        backgroundColor: Colors.green,
        title: Text('Dept List'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child:  Column(
          children: <Widget>[
               Text(
                    data['deptType'],
                style: TextStyle(
                  fontSize: 18.0
                ),
              ),
            SizedBox(height: 10.0),
            Text(
              data['Name'],
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              data['amount'],
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              data['description'],
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
          ],
        ),

      )

    );
  }
}
