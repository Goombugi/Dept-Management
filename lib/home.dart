import 'package:flutter/material.dart';
import 'depts.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Dept> dept = [
    Dept(deptType: 'deptType', amount: 'amount', name: 'name', description: 'description')
  ];

  String deptType = "";
  String amount = "";
  String name = "";
  String description = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  _buildDeptType(){
    return TextFormField(
      decoration: const InputDecoration(
          icon: const Icon(Icons.library_add_check_rounded),
          labelText: 'I Owe/ Owe Me:'),
      // Create validation in the design for the user input
      validator:(String value){
        if(value.isEmpty){
          return 'This field is required';
        }
      },
      onSaved: (String value){
        deptType = value;
        print(deptType);
      },
    );
  }
  _buildAmount(){
    return TextFormField(
      decoration: const InputDecoration(
          icon: const Icon(Icons.attach_money),
          labelText: 'Amount:'),
      // Forcing the keyboard to allow only numerical values
      keyboardType: TextInputType.number,
      // Create validation in the design for the user input
      validator:(String value){
        double num = double.tryParse(value);
        if(num == null || num <= 0){
          return 'Amount must be greater than 0';
        }
      },
      onSaved: (String value){
        amount = value;
        print(amount);
      },
    );
  }
  _buildName(){
    return TextFormField(
      decoration: const InputDecoration(
          icon: const Icon(Icons.person),
          labelText: 'Name:'),
      maxLength: 15,
        // Create validation in the design for the user input
        validator:(String value){
        if(value.isEmpty){
          return 'This field is required';
        }
      },
      onSaved: (String value){
        name = value;
        print(name);
      },
    );
  }
  _buildDescription(){
    return TextFormField(
      decoration: const InputDecoration(
          icon: const Icon(Icons.notes_sharp),
          labelText: 'Description:'),
      maxLength: 50,
      // Create validation in the design for the user input
      validator:(String value){
        if(value.isEmpty){
          return 'This field is required';
        }
      },
      onSaved: (String value){
        description = value;
        print(description);
      },
    );
  }
@override
  void initState() {
    super.initState();
    print('initState function run');
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: Icon(Icons.monetization_on_outlined),
        title: Text('Debt Management'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),


      body: Container(

        margin: EdgeInsets.all(24),

        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: (){
                 Navigator.pushNamed(context,'/');
                },
            icon: Icon(Icons.list_alt_outlined),
            label: Text('Dept List'),
              ),
              _buildDeptType(),
              _buildAmount(),
              _buildName(),
              _buildDescription(),
              SizedBox(height: 100),
              RaisedButton(
                child: Text("Save", style: TextStyle(color: Colors.green, fontSize: 16)),
                onPressed: (){
                  setState(() {
                        //reRun the function
                  });
                  if(!_formKey.currentState.validate()){
                    return '';
                  }
                  _formKey.currentState.save();
                  Navigator.pushReplacementNamed(context, '/', arguments: {
                    'deptType': deptType,
                    'name': name,
                    'amount':amount,
                    'description':description,
                  });

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
