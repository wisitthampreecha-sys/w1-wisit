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
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 24,
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
                  Text(
                    "Wisit Thampreecha",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "wisit.thampreecha@e-tech.ac.th",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 18),
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
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.phone, color: Colors.greenAccent),
                      ),
                      SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์โทร"), Text("064-334-0472")],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.cake, color: Colors.purple),
                      ),
                      SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("วันเกิด"), Text("05/04/2549")],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.location_pin, color: Colors.red),
                      ),
                      SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("ที่อยู่"), Text("ชลบุรี")],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.school),
                      ),
                      SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("การศึกษา"),
                          Text("วิทยาลัยเทคโนโลยีภาคตะวันออก อีเทค"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text("ไปหน้า 2"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(150, 5, 150, 5),
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: ClipOval(
                          child: Image.network(
                            "https://e1.pngegg.com/pngimages/677/263/png-clipart-picsart-shinnosuke-nohara-video-crayon-shinchan-nene-sakurada-emission-de-television-meme-internet-youtube-blague-instagram.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text("724.9k", style: TextStyle(color: Colors.black)),
                          Text(
                            "กำลังติดตาม",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 1.5,
                        height: 40,
                        color: Colors.grey.shade50,
                      ),
                      SizedBox(width: 10,),
                      Container(width: 1, height: 40, color: Colors.black,),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text("9.8m", style: TextStyle(color: Colors.black)),
                          Text(
                            "ผู้ติดตาม",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 1.5,
                        height: 40,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text("23.4m", style: TextStyle(color: Colors.black)),
                          Text(
                            "ถูกใจและบันทึก",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 25, height: 25),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wisit Thampreecha",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Icon(Icons.tiktok, color: Colors.grey, size: 20),
                  Text(
                    "wisit_thampreecha",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 2),
                  Icon(Icons.arrow_drop_down, color: Colors.black),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text(
                      "ติดตาม",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 30),
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10, width: 10),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 10, width: 10),
                        Icon(Icons.share, color: Colors.black),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Image.network(
                    "https://stickershop.line-scdn.net/stickershop/v1/product/10986/LINEStorePC/main.png",
                    width: 190,
                    height: 320,
                  ),
                  SizedBox(width: 10),
                  Image.network(
                    "https://stickershop.line-scdn.net/stickershop/v1/product/6451/LINEStorePC/main.png?v=1",
                    width: 163,
                    height: 320,
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
