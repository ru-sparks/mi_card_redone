import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple,
                Colors.red
              ],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/bugs.png"),
                ),
                Text(
                  "Bugs Bunny",
                  style: GoogleFonts.gloriaHallelujah(
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "Cartoon Character",
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.5,
                  ),
                ),
                const SizedBox(
                  width: 50,
                  height: 20.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                _buildContact(Icons.phone, '1-555-325-6242'),
                _buildContact(Icons.email, 'bugs@warnerbros.com'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContact(final IconData icon, String content) {
    return Card(
      color: Colors.white70,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      child: ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(
          content,
          style: GoogleFonts.sourceSansPro(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
