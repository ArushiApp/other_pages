import 'package:flutter/material.dart';
import 'addition4.dart';

class Addition3Page extends StatefulWidget {
  const Addition3Page({super.key});

  @override
  _Addition3PageState createState() => _Addition3PageState();
}

class _Addition3PageState extends State<Addition3Page> {
  String _message = '';
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Addition 4'),
        backgroundColor: const Color.fromARGB(226, 246, 244, 175),
      ),
      backgroundColor: const Color.fromARGB(255, 208, 190, 252),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
             decoration: BoxDecoration(
                color: const Color.fromARGB(255, 142, 241, 241),
                border: Border.all(color: const Color.fromARGB(255, 142, 241, 241), width: 1.0),
              ),
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ' The addition of these two Coins Are??',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(height: 30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/5 coin.png', width: 190, height: 180),
                  const SizedBox(width: 12),
                  Image.asset('assets/20 coin.png', width: 150, height: 130),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Incorrect!';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('30'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Incorrect!';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('30'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Correct!';
                      score++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  child: Text('25'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              _message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: _message == 'Correct!' ? Colors.blue : Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Addition4Page()),
                  );
                },
                child: Text('Next'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
