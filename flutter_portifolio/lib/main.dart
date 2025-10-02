import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortifolio());
}

class MyPortifolio extends StatelessWidget {
  const MyPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Mobile - Portifolio")),
        body: Center(
          child: Stack(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}