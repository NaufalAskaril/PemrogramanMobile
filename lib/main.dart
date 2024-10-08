import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sistem Kompensasi JTI Polinema',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20), // Adjusted size for better visibility
            ),
            const SizedBox(height: 4), // Space between title and subtitle
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'J',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'T',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'I',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' Polinema',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ]),
            ),
          ],
        ),
        backgroundColor: Color(0xFF00086B), // Set the header color
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Implement notification action
            },
          ),
        ],
      ),

      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Selamat datang,\nUsman Nurhasan, S.Kom., M.T.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage(
                  'assets/images/LOGOPOLINEMA.jpg'), // Path disesuaikan
              height: 150,
            ),
            SizedBox(height: 30),
            InputField(labelText: 'Total Tugas Kompensasi'),
            SizedBox(height: 10),
            InputField(labelText: 'Jumlah Tugas Kompensasi Dikerjakan'),
            SizedBox(height: 10),
            InputField(labelText: 'Jumlah Permintaan Tugas Kompensasi'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF00086B), // Set the footer color
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String labelText;
  InputField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
