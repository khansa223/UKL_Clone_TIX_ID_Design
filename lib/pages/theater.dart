import 'package:flutter/material.dart';
import 'package:tix_id/button/menubutton.dart';

class TheaterScreen extends StatelessWidget {
  final List<String> theaters = [
    "AEON MALL JGC CGV",
    "AEON MALL TANJUNG BARAT XXI",
    "AGORA MALL IMAX",
    "AGORA MALL PREMIERE",
    "AGORA MALL XXI",
    "ARION XXI",
    "ARTHA GADING XXI",
    "BASSURA XXI",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 27),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 15, 27),
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Cari di TIX ID',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  'JAKARTA',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tandai bioskop favoritmu!',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 15, 15, 27),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text('Mengerti'),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: theaters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  title: Text(
                    theaters[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: MenuBottom(1),
    );
  }
}
