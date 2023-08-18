import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red, // Warna latar belakang yang diinginkan
                shape: BoxShape.circle, // Bentuk lingkaran
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(50), // Radius sudut lingkaran
                child: Image.asset(
                  'assets/images/profile.png', // Lokasi gambar profil
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Najwa Khansa'in Chasna",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              "20210120050",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 20, horizontal: 50), // Tambahkan padding di sini
              ),
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
