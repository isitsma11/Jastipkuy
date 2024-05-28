import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, [Display Name]'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/driver_jasatitip');
                    },
                    child: Text('Jasa Titip'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/driver_antarjemput');
                    },
                    child: Text('Jasa Antar Jemput'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Recently', style: TextStyle(fontSize: 18)),
                Spacer(),
                Text('Today'),
                SizedBox(width: 16),
                Text('Upcoming'),
                SizedBox(width: 16),
                Text('Complete'),
              ],
            ),
            SizedBox(height: 20),
            // Add your 'Recently' section content here
          ],
        ),
      ),
    );
  }
}
