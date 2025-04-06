import 'package:flutter/material.dart';
import 'login_page.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/neuro_logo.png', // Replace with your actual logo image path
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to our App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
