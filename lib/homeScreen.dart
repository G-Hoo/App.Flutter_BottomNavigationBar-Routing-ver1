import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('homeScreen')
        ),
      ),
    );
  }
}
