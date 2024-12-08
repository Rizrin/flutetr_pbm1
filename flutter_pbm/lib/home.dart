import 'package:flutter/material.dart';
import 'package:tugasp8/pertemuan8.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Flutter"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pertemuan8Page()),
            );
          },
          child: const Text("Lanjut ke Pertemuan 8"),
        ),
      ),
    );
  }
}
