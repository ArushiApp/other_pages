import 'package:flutter/material.dart';
import 'content_main.dart';

class SubtractionPage2 extends StatefulWidget {
  const SubtractionPage2({super.key});

  @override
  State<SubtractionPage2> createState() => _SubtractionPageState2();
}

class _SubtractionPageState2 extends State<SubtractionPage2> {
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subtraction 2'),
        backgroundColor: const Color.fromARGB(240, 255, 248, 170),
      ),
      backgroundColor: const Color.fromARGB(255, 195, 191, 244),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 180, 230, 255),
                border: Border.all(color: const Color.fromARGB(255, 142, 241, 241), width: 1.0),
              ),
              padding: const EdgeInsets.all(4.0),
              child: const Text(
                ' The subtraction of these two Coins Are??',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(height: 15),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/20 note.jpeg', width: 160, height: 160),
                  const SizedBox(width: 1),
                  Image.asset('assets/50 note.jpeg', width: 150, height: 150),
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
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('6'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Incorrect!';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('7'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Correct!';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('5'),
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
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ContentMain()),
                      );
                    },
                    child: const Text('Next'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
