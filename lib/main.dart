import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text("Thomas M Kurialassery"),
      // ),
      // drawer: const NavigationDrawer(children:[
      //   Text("Item1"),
      //   Text("Item2"),
      //   Text("Item3"),
      //   Text("Item4"),
      //   Text("Item5"),
      // ]),
      body: FooterView(
        footer: Footer(
          padding: const EdgeInsets.all(5.0),
          backgroundColor: const Color(0x0DFFFFFF),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: Image.asset("assets/youtube.png"),
                                color: const Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: Image.asset("assets/instagram.png"),
                                color: Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: Image.asset("assets/linkedin.png"),
                                color: const Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: Image.asset("assets/medium.png"),
                                color: const Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: Image.asset("assets/stackoverflow.png"),
                                onPressed: () {},
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                const Text(
                  'Copyright ©2020, All Rights Reserved.',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                      color: Color(0xFF162A49)),
                ),
              ]),
        ),
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 100)),
                const RippleAnimation(
                  color: Color(0xFFC8CEC7),
                  delay: Duration(milliseconds: 100),
                  repeat: true,
                  minRadius: 75,
                  ripplesCount: 5,
                  duration: Duration(milliseconds: 16 * 300),
                  child: CircleAvatar(
                    minRadius: 75,
                    maxRadius: 75,
                    backgroundImage: AssetImage("assets/me.png"),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 80)),
                Text(
                  "Thomas M Kurialassery",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2)),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
