import 'package:flutter/material.dart';
import 'content_main.dart';

class Addition8Page extends StatefulWidget {
  const Addition8Page({super.key});

  @override
  _Addition8PageState createState() => _Addition8PageState();
}

class _Addition8PageState extends State<Addition8Page> {
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Addition 8'),
        backgroundColor: const Color.fromARGB(176, 254, 247, 161),
      ),
      backgroundColor: const Color.fromARGB(255, 218, 204, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 180, 230, 255),
                border: Border.all(color: const Color.fromARGB(255, 180,230,255), width: 1.0),
              ),
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ' The addition of these two Notes Are??',
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/50 note.jpeg', width: 160, height: 160),
                  const SizedBox(width: 5),
                  Image.asset('assets/20 note.jpeg', width: 150, height: 150),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Correct!';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('70'),
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
                  child: Text('65'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Incorrect!';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  child: Text('80'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              _message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: _message == 'Correct!' ? Colors.blue : Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
            ),
            const SizedBox(height: 10),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContentMain()),
                );
              },
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
