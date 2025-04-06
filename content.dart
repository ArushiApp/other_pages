import 'package:flutter/material.dart';
import 'currency_addition_page.dart';
import 'subtraction_page.dart';

class ContentMain extends StatelessWidget {
  const ContentMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
          backgroundColor: Colors.blue[200], title: Text('Content')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/neuro_logo.png', // Replace with your actual logo image path
              width: 150,
              height: 150,
            ),
            SizedBox(height: 10),
            Text(
              'Welcome to the content page!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            Text(
              'Select an option:',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 40,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 191, 239, 182)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CurrencyIdentificationPage()),
                    );
                  },
                  child: Text('Currency Identification'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 191, 239, 182)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CurrencyAdditionPage()),
                    );
                  },
                  child: Text('Addition'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 191, 239, 182)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubtractionPage()),
                    );
                  },
                  child: Text('Subtraction'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 191, 239, 182)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubtractionPage()),
                    );
                  },
                  child: Text('Transaction'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
