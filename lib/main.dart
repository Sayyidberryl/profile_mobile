import 'package:flutter/material.dart';
import 'package:profile_bertiga/profile_berryl.dart';
import 'package:profile_bertiga/profile_rizky.dart';
import 'profile_zahran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portfolio Bertiga",
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xFF101638),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                "Menu Navigasi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/10041.jpg"),
              ),
              title: const Text("Sayyid Berryl M",
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileBerryl(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/09806.jpg"),
              ),
              title: const Text("Muhamad Rizqi F",
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileRizqi(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/10119.jpg"),
              ),
              title: const Text("Zahran Fairuz R",
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileZahran(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 227, 177, 24),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Judul
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Selamat Datang\n",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "Perkenalkan kami",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                SizedBox(
                  height: 275,
                  child: Image.asset(
                    "assets/images/foto_bertiga.png",
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 20),

                // Deskripsi
                const Text(
                  "Kami adalah tim yang terdiri dari tiga orang dengan keahlian berbeda. "
                  "Bersama-sama kami membangun berbagai proyek digital mulai dari desain, "
                  "pengembangan frontend, hingga backend. "
                  "Portfolio ini dibuat untuk memperkenalkan karya serta perjalanan kami di dunia IT.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),

                const SizedBox(height: 30),

                buildProfileCard(
                  "assets/images/10041.jpg",
                  "Sayyid Berryl M",
                  "Backend Developer",
                ),
                const SizedBox(height: 15),
                buildProfileCard(
                  "assets/images/09806.jpg",
                  "Muhamad Rizqi F",
                  "Frontend Developer",
                ),
                const SizedBox(height: 15),
                buildProfileCard(
                  "assets/images/10119.jpg",
                  "Zahran Fairuz R",
                  "Frontend Developer",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable card profile
  Widget buildProfileCard(String image, String name, String role) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1B3A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.amber, width: 2),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),

          // Nama & Role
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                role,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// 👉 Page profil tiap anggota
class ProfilePage extends StatelessWidget {
  final String name;
  final String role;

  const ProfilePage({super.key, required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: const Color(0xFCC61D),
      ),
      body: Center(
        child: Text(
          "$name - $role",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
