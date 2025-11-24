import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dek',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.red[900]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://images.genius.com/d9fe20402c6b3b06af916dfb6836ece5.640x640x1.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Wisit Thampreecha"),
                  SizedBox(height: 10),
                  Text("wisit.thampreecha@e-tech.ac.th"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ข้อมูลส่วนตัว"),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.phone),
                      ),
                      SizedBox(width: 18),
                      Column(
                        children: [Text("เบอร์โทร"), Text("064-334-0472")],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.cake),
                      ),
                      SizedBox(width: 18),
                      Column(
                        children: [Text("วันเกิด"), Text("05/04/2549")],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.location_pin),
                      ),
                      SizedBox(width: 18),
                      Column(
                        children: [Text("ที่อยู่"), Text("ชลบุรี")],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.school),
                      ),
                      SizedBox(width: 18),
                      Column(
                        children: [Text("การศึกษา"), Text("วิทยาลัยเทคโนโลยีภาคตะวันออก อีเทค")],
                      ),
                    ],
                  ),

                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text("ไปหน้า 2"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Second Page")));
  }
}
