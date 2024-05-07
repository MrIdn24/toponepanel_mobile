import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/home.dart';
import 'package:my_flutter/pages/first_register.dart';
import 'package:my_flutter/pages/first_signin.dart';
import 'package:my_flutter/pages/first_splash.dart';
import 'package:my_flutter/pages/first_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Home(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameContoller = TextEditingController();
  TextEditingController passwordnameContoller = TextEditingController();
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20), // Apply border radius here
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Text(
                          'Login Form',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/e/e6/Logo_BAZNAS_RI-Hijau-01.png',
                          height: 300,
                          width: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            controller: usernameContoller,
                            decoration: InputDecoration(
                                hintText: "Username"
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: passwordnameContoller,
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                          obscureText: true,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: EdgeInsets.only(top: 20),
                          child: Container(
                            width: double.infinity,
                            child: FilledButton(onPressed: () {
                                username = usernameContoller.text;
                                password = passwordnameContoller.text;
                                _showLoginDialog();
                            }, child: Text(
                                'Login',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white70),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

  void _showLoginDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login information'),
            content: Text('Username : $username\nPassword : $password'),
            actions: <Widget>[
              TextButton(onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home()));
              }, child: Text('Next'))
            ],
          );
        }
    );
  }
}


class SampleWidget extends StatelessWidget {
  const SampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Column(
              children: [
                Text('Syaifudin'),
                Text('Ilham')
              ],
            ),
            Row(
              children: [
                Text('Syaifudin'),
                Text('Ilham')
              ],
            ),
            Image.network(
              'https://www.pngkey.com/png/full/267-2672335_logo-kepala-garuda-keren.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter username',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: OutlinedButton(onPressed: () {

              }, child: Text('Confirm')),
            )
          ],
        ),
      ),
    );
  }
}

