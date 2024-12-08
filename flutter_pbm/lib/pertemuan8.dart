import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Pertemuan8Page extends StatelessWidget {
  const Pertemuan8Page({super.key});

  void showFlutterToast() {
    Fluttertoast.showToast(
      msg: "Pesan singkat selama 3 detik",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.purple,
      textColor: Colors.white,
      fontSize: 16.0,
      webPosition: "center",
      webBgColor: "linear-gradient(to right, #800080, #32CD32)", // Hanya digunakan di web
    );
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text("Ini adalah Snackbar dengan action!"),
      backgroundColor: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Bentuk elips
      ),
      margin: const EdgeInsets.all(5), // Margin
      padding: const EdgeInsets.all(5), // Padding
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'ACTION',
        textColor: Colors.yellow,
        onPressed: () {
          // Aksi tambahan saat ACTION ditekan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Anda menekan ACTION!")),
          );
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 8 - Notification Widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: showFlutterToast,
              child: const Text("Tampilkan Flutter Toast"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showSnackBar(context),
              child: const Text("Tampilkan Snackbar"),
            ),
            const SizedBox(height: 20),
            const Tooltip(
              message: "Ini Tooltip",
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              showDuration: Duration(seconds: 3),
              waitDuration: Duration(seconds: 1),
              child: Icon(Icons.info, size: 50),
            ),
          ],
        ),
      ),
    );
  }
}
