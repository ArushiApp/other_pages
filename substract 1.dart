import 'package:flutter/material.dart';
import 'subtraction_page_2.dart';

class SubtractionPage extends StatefulWidget {
  const SubtractionPage({super.key});

  @override
  State<SubtractionPage> createState() => _SubtractionPageState();
}

class _SubtractionPageState extends State<SubtractionPage> {
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subtraction 1'),
        backgroundColor: const Color.fromARGB(206, 255, 248, 176),
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
            SizedBox(height: 30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/5 coin.png', width: 180, height: 180),
                  const SizedBox(width: 12),
                  Image.asset('assets/1 coin another.png', width: 160, height: 160),
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
                      _message = 'Correct!';
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
                      _message = 'Incorrect!';
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
                        MaterialPageRoute(builder: (context) => const SubtractionPage2()),
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
