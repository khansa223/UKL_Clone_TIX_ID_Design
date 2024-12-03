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
