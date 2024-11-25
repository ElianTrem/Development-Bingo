import 'package:flutter/material.dart';

class Loging extends StatefulWidget {
  const Loging({super.key});

  @override
  _LogingState createState() => _LogingState();
}

class _LogingState extends State<Loging> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ESTA ES UNA PRUEBAAAAA'),
      ),
    );
  }
}
