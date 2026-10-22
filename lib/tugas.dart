import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakCustom(
                    warna: Colors.blue,
                    teks: 'Favorit 1',
                  ),
                  SizedBox(width: 20),
                  KotakCustom(
                    warna: Colors.lightBlue,
                    teks: 'Favorit 2',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakCustom(
                    warna: Colors.blueAccent,
                    teks: 'Favorit 3',
                  ),
                  SizedBox(width: 20),
                  KotakCustom(
                    warna: Colors.indigo,
                    teks: 'Favorit 4',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakCustom extends StatelessWidget {
  final Color warna;
  final String teks;

  KotakCustom({required this.warna, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 4),
          Text(
            teks,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}