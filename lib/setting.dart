import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letstudy/screens/login_screens.dart';
import 'package:letstudy/home.dart';

void main() => runApp(setting());

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  TextStyle _style = TextStyle(fontSize: 55);
  bool _isDark = false;
  ThemeData _light = ThemeData.light().copyWith(
    primaryColor: Colors.green,
  );
  ThemeData _dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
  );
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
          title: Text('coba'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: CupertinoSwitch(
            value: _isDark,
            onChanged: (v) {
              setState(() {
                _isDark = !_isDark;
              });
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ));
                        })
                  ]);
            },
          ),
        ),
      ),
    );
  }
}
