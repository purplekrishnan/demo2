import 'package:flutter/material.dart';

class Detailespage extends StatefulWidget {
  Detailespage({
    super.key,
    required this.name,
    required this.password,
    required this.email,
    required this.contact,
    required this.address,
    required this.Gender,
    required this.degree,
    required this.dept,
    required this.hob1,
    required this.hob2,
  });
  dynamic name;
  dynamic password;
  String email;
  String contact;
  String Gender;
  String degree;
  String dept;
  bool hob1;
  bool hob2;
  String address;
  @override
  State<Detailespage> createState() => NextPageState();
}

class NextPageState extends State<Detailespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Name : ${widget.name}"),
            Text("Email : ${widget.email}"),
            Text("Password: ${widget.password}"),
            Text("Mob : ${widget.contact}"),
            Text("sex : ${widget.Gender}"),
            Text("Degree : ${widget.degree}"),
            Text("Engineering: ${widget.dept}"),
            Text("Sleeping: ${widget.hob1}"),
            Text("reading: ${widget.hob2}"),
            Text("Address: ${widget.address}"),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
