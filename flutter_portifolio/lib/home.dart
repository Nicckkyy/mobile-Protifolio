import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(fontFamily: "Gabriela"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(title: Text("Bem vindo a tela home do portifolio")),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: screenSize.height,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      color: const Color.fromARGB(255, 16, 36, 46),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, I'm a mobile developer!",
                            style: TextStyle(
                              // fontFamily: 'Gabriela',
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            "Come see some of my skills",
                            style: TextStyle(
                              // fontFamily: 'Gabriela',
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/nick.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 180),
              color: Colors.white30,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: Icon(
                        Icons.person_2,
                        size: 150,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(width: 50),

                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Me",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Some text",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            height: 2,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "some another text",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: screenSize.height,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/arriete-background.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
