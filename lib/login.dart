import 'package:flutter/material.dart';
// ignore: unused_import
import 'dashboard.dart'; // Import halaman dashboard

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String username = "najwa@gmail.com";
  final String password = "12345";
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Hallo Pizzaria'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                    height: 300, child: Image.asset('assets/images/logo.png')),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    // print(usernameController.text);
                    if (usernameController.text == username &&
                        passwordController.text == passwordController.text) {
                      Navigator.of(context).pushReplacementNamed('/dashboard');
                    } else {}
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50), // Tambahkan padding di sini
                  ),
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                'atau Masuk dengan :',
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
              const SizedBox(height: 30), // Mengurangi jarak
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement Google login
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20), // Tambahkan padding di sini
                    ),
                    icon: const Icon(Icons.android), // Ganti dengan ikon Google
                    label: const Text('Google'),
                  ),
                  const SizedBox(
                    height: 5,
                  ), // Mengurangi jarak
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement Apple (iCloud) login
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20), // Tambahkan padding di sini
                    ),
                    icon: const Icon(Icons.apple), // Ganti dengan ikon iPhone
                    label: const Text('Apple'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Your DashboardPage code should be defined in the 'dashboard.dart' file.
