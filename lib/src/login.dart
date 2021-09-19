import 'package:flutter/material.dart';
import 'package:my_app/src/signup.dart';
import 'configtimer.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Pomodurance';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color(0xFFECF7FE),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFCA4A4A),
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFFFFFFF),
              border: OutlineInputBorder(),
              hintText: 'Username',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: const TextField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color(0xFFFFFFFF),
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Color(0xFFCA4A4A), // background
              onPrimary: Color(0xFFFFFFF), // foreground
              minimumSize: Size(200, 55),
            ),
            child: Text('Login', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 30)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyForm()),
              );
            },
          ),
        TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: Text("Don't have an account? Sign up!", style: TextStyle(color: Color(0xFF498ECE), fontSize: 15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
          ),
      ],
    );
  }
}

