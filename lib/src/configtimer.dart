import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          singleForm("Number of Work Periods"),
          singleForm("Study/Break splits | ie. 25 5"),
          singleForm("Short/Long break ratio | ie. 4 1"),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
              ),
              child: Text('Ready!'),
              onPressed: () {},
            ),
          )
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
