import 'package:flutter/material.dart';

//void main() => runApp(const SignUp());

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          child: const TextField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color(0xFFFFFFFF),
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          child: const TextField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color(0xFFFFFFFF),
              border: OutlineInputBorder(),
              hintText: 'Password',
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
              hintText: 'Confirm Password',
            ),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Color(0xFFCA4A4A), // background
              onPrimary: Color(0xFFFFFFF),
              minimumSize: Size(200, 55), // foreground
            ),
            child: Text('Sign Up', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 30)),
            onPressed: () {},
          ),
      ],
    );
  }
}

