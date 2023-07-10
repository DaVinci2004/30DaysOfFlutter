import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Catalog App"),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("hello world lucky number is $days" + "000"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
