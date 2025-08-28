import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cities In India',
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cities In India',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(198, 239, 141, 14),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            MyListItem(
              speciesname: 'Mumbai',
              imageurl: 'assets/images/a.jpeg',
              lifespan: 12,
            ),
            MyListItem(
              speciesname: 'Banglore',
              imageurl: 'assets/images/b.jpeg',
              lifespan: 8.4,
            ),
              MyListItem(
              speciesname: 'Chennai',
              imageurl: 'assets/images/c.jpg',
              lifespan: 6.7,
            ),
              MyListItem(
              speciesname: 'Kolkata',
              imageurl: 'assets/images/d.jpeg',
              lifespan: 5.1,
            ),
              MyListItem(
              speciesname: 'Hyderabad',
              imageurl: 'assets/images/e.jpeg',
              lifespan: 6.8,
            ),
              MyListItem(
              speciesname: 'Madurai',
              imageurl: 'assets/images/f.jpg',
              lifespan: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  final String speciesname, imageurl;
  final double lifespan;

  const MyListItem({
    super.key,
    required this.speciesname,
    required this.imageurl,
    required this.lifespan,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.grey, width: 0.5),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Image section
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.grey[200],
            width: 150,
            height: 150,
            child: Image.asset(
              imageurl,
              fit: BoxFit.cover,
            ),
          ),

          // Text section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    speciesname,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 101, 27),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Population: $lifespan millon",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
