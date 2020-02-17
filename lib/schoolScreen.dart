import 'package:flutter/material.dart';

class schoolScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          alignment: Alignment.center,
          child: Text('schoolScreen'),
        ),
      ),
    );
  }
}
