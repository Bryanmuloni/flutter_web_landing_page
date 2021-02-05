import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.only(right: 10,left: 10.0),
        child: Container(
          child: Text("Home"),
        ),
      ),
    );
  }
}
