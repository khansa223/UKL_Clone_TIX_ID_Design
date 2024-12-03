import 'package:flutter/material.dart';
import 'package:tix_id/pages/homepage.dart';
import 'package:tix_id/pages/login.dart';
import 'package:tix_id/pages/theater.dart';
import 'package:tix_id/pages/tiket.dart';
import 'package:tix_id/pages/tiketku.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashscreen',
     routes: {
      '/splashscreen': (context)=> SplashScreen(),
       '/bioskop': (context) =>TheaterScreen(),
       '/home': (context) => homepage(),
       '/tiket': (context) => Ticket(),
       '/tiketku': (context) => TiketkuPage(),
        
      },

    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001a3c),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("data:image/png;base64,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"),
              const SizedBox(height: 20),
              const Text(
                "TIX VIP, lebih seru, koin melimpah, dapat hadiah!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Gabung TIX VIP dan kumpulkan koin untuk mendapatkan hadiah dan diskon.",
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
