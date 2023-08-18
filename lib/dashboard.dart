import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard App',
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  final List<dynamic> _listMenu = [
    Food(title: 'Menu', icon: Icons.motorcycle),
    Food(title: 'Takeaway', icon: Icons.delivery_dining),
    Food(title: 'Dine In', icon: Icons.food_bank_outlined),
    Food(title: 'Favorit', icon: Icons.history),
  ];
  final List<Menu> _menu = [
    Menu(
        title: 'Pizza Offer 2',
        harga: 'Rp 95.000',
        gambar: 'assets/images/gambar1.png'),
    Menu(
        title: 'Super Supreme',
        harga: 'Rp 85.000',
        gambar: 'assets/images/gambar2.jpg'),
    Menu(
        title: 'Paket Mix',
        harga: 'Rp 315.000',
        gambar: 'assets/images/gambar3.jpeg'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Image.asset('assets/images/banner.png'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 140,
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                itemCount: _listMenu.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),

                          shape: BoxShape
                              .rectangle, // Menggunakan bentuk lingkaran
                          border: Border.all(
                            color: Colors.black, // Ubah warna sesuai kebutuhan
                            width: 2, // Ubah lebar sesuai kebutuhan
                          ),
                        ),
                        child: Column(
                          children: [
                            IconButton(
                              iconSize: 40,
                              onPressed: () {
                                log('menu ${_listMenu[index].title}');
                              },
                              icon: Icon(
                                _listMenu[index].icon,
                              ),
                            ),
                            Text(_listMenu[index].title)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 140,
                    child: Divider(color: Colors.black, thickness: 2),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Order Here",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Divider(color: Colors.black, thickness: 2),
                  ),
                ],
              ),
            ),

            // menu
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.vertical,
                itemCount: _menu.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Image.asset(
                          _menu[index].gambar,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          _menu[index].title,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  // Tambahkan fungsi untuk memesan menu
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                ),
                                icon: Icon(
                                  Icons.shopping_cart,
                                  size: 25,
                                ),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Food {
  final String title;
  final IconData icon;

  Food({required this.title, required this.icon});
}

class Menu {
  final String title;
  final String harga;
  final String gambar;

  Menu({required this.title, required this.harga, required this.gambar});
}
