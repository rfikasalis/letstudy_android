import 'package:letstudy/bahasa.dart';
import 'package:letstudy/biologi.dart';

import 'package:letstudy/fisika.dart';
import 'package:letstudy/kimia.dart';
import 'package:letstudy/membaca.dart';
import 'package:letstudy/setting.dart';
import 'package:letstudy/todolist.dart';
import 'package:flutter/material.dart';
import 'package:letstudy/header_drawer.dart';
import 'package:letstudy/profil.dart';
import 'package:letstudy/matematika.dart';
import 'package:flutter/cupertino.dart';
import 'package:letstudy/screens/login_screens.dart';
import 'package:letstudy/camera.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      title: "Login App",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

TextStyle _style = TextStyle(fontSize: 55);
bool _isDark = false;
ThemeData _light = ThemeData.light().copyWith(
  primaryColor: Colors.green,
);
ThemeData _dark = ThemeData.dark().copyWith(
  primaryColor: Colors.blueGrey,
);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: _dark,
        theme: _light,
        themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        title: 'coba',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 19, 7, 22),
              title: const Text("Let'Study"),
            ),
            drawer: Drawer(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const MyHeaderDrawer(),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Beranda"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.list),
                    title: const Text("Task List"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TodoList()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.people),
                    title: const Text("Profil"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ProfileApp())));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Pengaturan"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => setting()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Log Out"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            )),
            body: GridView.count(
                padding: const EdgeInsets.all(25),
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => matematikapage()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.calculate,
                              size: 70,
                              color: Color.fromARGB(255, 255, 68, 77),
                            ),
                            Text("Matematika",
                                style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bahasapage()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.language,
                              size: 70,
                              color: Colors.redAccent,
                            ),
                            Text("Bahasa", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => fisikapage()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.science,
                              size: 70,
                              color: Colors.greenAccent,
                            ),
                            Text("Fisika", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => kimiapage()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.whatshot,
                              size: 70,
                              color: Colors.blueGrey,
                            ),
                            Text("Kimia", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => biologipage()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.spa,
                              size: 70,
                              color: Color.fromARGB(255, 243, 255, 68),
                            ),
                            Text("Biologi", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => membacapage()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.local_library,
                              size: 70,
                              color: Colors.blueAccent,
                            ),
                            Text("Membaca", style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cameraPage()));
                      },
                      splashColor: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.spa,
                              size: 70,
                              color: Color.fromARGB(255, 243, 255, 68),
                            ),
                            Text("Submit Tugas",
                                style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: CupertinoSwitch(
                          value: _isDark,
                          onChanged: (v) {
                            setState(() {
                              _isDark = !_isDark;
                            });
                          }))
                ])));
  }
}
