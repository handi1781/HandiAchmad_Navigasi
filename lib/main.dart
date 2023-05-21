import 'package:flutter/material.dart';
import 'package:flutter_navigasi/halaman2.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Login";
  var body = "isi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Text("Halo Handi"),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MyWidget(
                    parameter: "Haii",
                    parameter2: "Heii",
                  ),
                ));
              },
            ),
            ListTile(
              title: Text("Peminjaman"),
            ),
            ListTile(
              title: Text("Pengembalian"),
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "Haloo";
          body = "Empty";
        });

        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const MyWidget(
            parameter: "Haii",
            parameter2: "Heii",
          ),
        ));
      }),
      body: Text(body),
    );
  }
}
