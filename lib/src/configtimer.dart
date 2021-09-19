import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
    );
  }
}

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello!'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextSection(),
              TextSection(),
            ],
          )),
    );
  }
}

class TextSection extends StatelessWidget {
  //Color _color;
  //TextSection(this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(
      //  color: _color,
      //),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter Working Duration",
        ),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          singleForm("Number of Cycles"),
          singleForm("Enter Study Duration and break duration, ie 25 5"),
          //singleForm(
          //    "Enter number of cycles before 1 long break (3x short break)"),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
            ),
            child: Text('Pill Button'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class singleForm extends StatelessWidget {
  singleForm(this.textvalue);

  final String textvalue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
      child: Container(
        width: size.width * 0.8,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: textvalue,
          ),
        ),
      ),
    ));
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            primary: Colors.blue,
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
