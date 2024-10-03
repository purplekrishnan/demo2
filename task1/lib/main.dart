import 'package:flutter/material.dart';
import 'package:task1/2nd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Task1(),
      ),
    );
  }
}

class Task1 extends StatefulWidget {
  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  String _selectedValue = '';
  String _selectgroup = 'PG';
  List<String> SelectGroup = ['PG', 'UG', '12th'];
  List<String> selectedvalues = [];
  String _engineering = 'Electrical engineering';

  List<String> Engineering = [
    'Electrical engineering',
    'Civil Engineering',
    'Mechanical Engineering',
    'Automotive engineering'
  ];

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController myTextController = TextEditingController();

  bool checkboxValue1 = false;
  bool checkboxValue2 = false;

  void _onCheckboxChanged(String value, bool isChecked) {
    setState(() {
      if (isChecked) {
        selectedvalues.add(value);
      } else {
        selectedvalues.remove(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Text(
            'PERSONAL DETAILS',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('NAME:  '),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('PASSWORD: '),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: passController,
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('EMAIL ID:  '),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('GENDER:'),
                Row(
                  children: [
                    Radio(
                        groupValue: _selectedValue,
                        value: 'MALE',
                        onChanged: (String? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        }),
                    const Text('MALE')
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        groupValue: _selectedValue,
                        value: 'FEMALE',
                        onChanged: (String? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        }),
                    const Text('FEMALE'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('CONTACT:  '),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: contactController,
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'EDUCATIONAL QUALIFICATION',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'QUALIFICATION:  ',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                DropdownButton<String>(
                  value: _selectgroup,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectgroup = newValue!;
                    });
                  },
                  items: SelectGroup.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ENGINEERING:',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                DropdownButton<String>(
                  value: _engineering,
                  onChanged: (String? newValue) {
                    setState(() {
                      _engineering = newValue!;
                    });
                  },
                  items: Engineering.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HOBBIES :",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 200,
                  child: CheckboxListTile(
                    title: Text("Playing chess"),
                    value: selectedvalues
                        .contains("Playing chess"), //listil value ondengil
                    onChanged: (isChecked) {
                      _onCheckboxChanged('Playing chess', isChecked!);
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: CheckboxListTile(
                    title: Text("Reading books"),
                    value: selectedvalues
                        .contains("Reading books"), //listil value ondengil
                    onChanged: (isChecked) {
                      _onCheckboxChanged('Reading books', isChecked!);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('ADDRESS',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 350,
              height: 150,
              child: TextField(
                controller: myTextController,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.redAccent)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Detailespage(
                              name: nameController.text,
                              email: emailController.text,
                              password: passController.text,
                              Gender: _selectedValue,
                              degree: _selectgroup,
                              dept: _engineering,
                              hob1: checkboxValue1,
                              hob2: checkboxValue2,
                              address: myTextController.text,
                              contact: contactController.text,
                            )));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
