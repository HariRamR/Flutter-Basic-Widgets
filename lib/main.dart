import 'package:GamingArena/pages/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Session1());
}

class Session1 extends StatelessWidget {
  const Session1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaming Arena',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const ArenaDashboard(title: 'Gaming Arena'),
    );
  }
}
