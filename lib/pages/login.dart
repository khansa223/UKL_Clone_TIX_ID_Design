import 'package:flutter/material.dart';
import 'package:tix_id/pages/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => homepage()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        shadowColor: Colors.grey.withOpacity(0.5),
        automaticallyImplyLeading: true,
        title: const Text(
          "Daftar TIX ID",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, right: 10.0, left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "NAMA LENGKAP",
              style: TextStyle(color: Color.fromARGB(255, 3, 79, 141)),
            ),
            const TextField(),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "NAMA LENGKAP",
              style: TextStyle(color: Color.fromARGB(255, 3, 79, 141)),
            ),
            const TextField(
              decoration: InputDecoration(label: Text("+62")),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xFF001a3c),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    "Daftar TIX ID",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}