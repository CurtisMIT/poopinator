import 'package:flutter/material.dart';

class Start extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 500.0, left: 35.0, bottom: 150.0),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Oh Sh*t!',
              style: TextStyle(
                fontSize: 34,
                color: Colors.teal[900],
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: Text(
                'Enter your health data to get started',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            TestButton(
              name: 'Enter Health Data',
              color: Colors.teal[900],
              txtcolor: Colors.white,
            ),
            TestButton(
              name: 'Find me a toilet first',
              color: Colors.white,
              txtcolor: Colors.teal[900],
            )
          ],
          )
      ),
    );
  }
}

class TestButton extends StatelessWidget {

  TestButton({this.name, this.color, this.txtcolor});

  final String name;
  final Color color;
  final Color txtcolor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text('$name'),
      onPressed: () => print('tapped'),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 20.0
      ),
      color: color,
      textColor: txtcolor,
      shape: StadiumBorder(
        side: BorderSide(
          color: Colors.teal[900]
        )
      ),
      height: 50,
      minWidth: 170,
    );
  }
}