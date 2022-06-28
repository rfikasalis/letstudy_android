import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:letstudy/core/api_client.dart';
import 'package:letstudy/home.dart';
import 'package:letstudy/home.dart';
import 'package:letstudy/screens/register.dart';
import 'package:letstudy/utils/validator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ApiClient _apiClient = ApiClient();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
        body: Form(
          key: _formKey,
          child: Stack(children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width * 0.85,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                      child: Center(
                          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 45,
                          ),
                          SizedBox(
                            height: 150,
                            width: 300,
                            child: LottieBuilder.asset(
                                "assets/lottie/login2.json"),
                          ),
                          SizedBox(height: size.height * 0.06),
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              return Validator.validateEmail(value ?? "");
                            },
                            decoration: InputDecoration(
                              hintText: "Email",
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          TextFormField(
                            obscureText: _showPassword,
                            controller: passwordController,
                            validator: (value) {
                              return Validator.validatePassword(value ?? "");
                            },
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(
                                      () => _showPassword = !_showPassword);
                                },
                                child: Icon(
                                  _showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              ),
                              hintText: "Password",
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreen()));
                                  },
                                  child: const Text(
                                    "dont have account yet? ",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "Or Login using Social Media Account",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FontAwesomeIcons.facebook,
                                      color: Colors.blue)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.redAccent,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    FontAwesomeIcons.twitter,
                                    color: Colors.orangeAccent,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    FontAwesomeIcons.linkedinIn,
                                    color: Colors.green,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ],
                  ))),
                ),
              ),
            ),
          ]),
        ));
  }
}
