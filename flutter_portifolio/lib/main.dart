import 'package:flutter/material.dart';
import 'package:flutter_portifolio/home.dart';
import 'package:flutter_portifolio/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Inicial());
}

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Gabriela"),
      debugShowCheckedModeBanner: false,
      home: MyPortifolioHome(),
    );
  }
}

class MyPortifolioHome extends StatelessWidget {
  const MyPortifolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Gabriela"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Mobile - Portifolio",
        //     style: TextStyle(color: Color.fromRGBO(71, 55, 41, 1.0)),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: const Color.fromRGBO(107, 167, 153, 1.0),
        //   toolbarHeight: 50,
        // ),
        body: Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/chiriro-wallpaper.jpg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover, //cobre todo o espaço em branco da tela
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nick",
                      style: TextStyle(
                        color: Color.fromRGBO(56, 41, 15, 1),
                        fontSize: 25,
                        // fontFamily: "Gabriela",
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Portifolio",
                      style: TextStyle(
                        color: Color.fromRGBO(56, 41, 15, 1),
                        fontSize: 56,
                        // fontFamily: "Gabriela",
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.25),
                      ),
                      child: Text(
                        "more about me",
                        style: TextStyle(
                          color: Color.fromRGBO(2, 83, 77, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
