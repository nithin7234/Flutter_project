import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ocean Life',
      home : Scaffold(
        appBar: AppBar(
          title: Text('Oce@n Life',
          style: TextStyle(color: const Color.fromARGB(255, 1, 36, 64)),),
          backgroundColor: const Color.fromARGB(255, 53, 161, 249),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
          children: [
            Text('Welcome user!!',style: TextStyle(color: Colors.red)),
            Icon(Icons.person),
            Icon(Icons.call),
            ElevatedButton(onPressed: (){}, 
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Background color of the button
            foregroundColor: Colors.white, // Text/icon color
            elevation: 5, // Z-coordinate for the shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
  ),
  ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(hintText: "Search here.......",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder()),
          ),
          Image.network("https://plus.unsplash.com/premium_photo-1661810609562-fc278fedc3f0?q=80&w=2090&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          Container(height:200,color: Colors.green)
          ],
        ),
        ),
      )
    );
  }
}