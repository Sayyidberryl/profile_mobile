import 'package:flutter/material.dart';

void main() {
  runApp(ProfileZahran());
}

class ProfileZahran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0A1C44),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.amber,
                padding: EdgeInsets.all(24),
                child: Center(
                 
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF13294B),
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 300,
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.amber,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.white,
                        // ganti dengan foto Anda
                        backgroundImage: AssetImage("assets/images/10119.jpg"),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Zahran Fairuz R",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      "PPLG XII-4",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              buildCard(
                  "About me",
                  "Halo, saya Zahran Fairuz R, seorang siswa PPLG XII-4. "
                      "Saya memiliki ketertarikan besar dalam dunia teknologi, khususnya di bidang pemrograman dan pengembangan aplikasi. "
                      "Bagi saya, belajar IT adalah cara untuk menciptakan sesuatu yang bermanfaat bagi banyak orang."),
              buildCard(
                  "My skill",
                  "Saya menguasai dasar-dasar pemrograman seperti Dart dan Flutter untuk pengembangan mobile. "
                      "Selain itu saya juga terbiasa bekerja dengan desain sederhana, kolaborasi tim, dan memahami alur pembuatan aplikasi dari awal sampai akhir."),
              buildCard(
                  "My goal",
                  "Tujuan saya adalah menjadi seorang developer yang dapat membangun aplikasi inovatif "
                      "dan bermanfaat, sekaligus terus mengembangkan kemampuan dalam dunia IT agar siap menghadapi tantangan industri."),

              SizedBox(height: 20),
              Text(
                "Media Sosial",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildSocialIcon(Icons.mail),
                  buildSocialIcon(Icons.discord),
                  buildSocialIcon(Icons.tiktok),
                  buildSocialIcon(Icons.telegram),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk Card
  Widget buildCard(String title, String desc) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF13294B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.amber),
          ),
          SizedBox(height: 6),
          Text(
            desc,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }

  // Widget untuk ikon media sosial
  Widget buildSocialIcon(IconData icon) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        icon,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}
