import 'package:flutter/material.dart';
import 'package:tix_id/button/menubutton.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Film Bioskop",
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: "Sedang Tayang"),
                Tab(text: "Akan Datang"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildMovieGrid(),
                  _buildMovieGrid2(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MenuBottom(2),
    );
  }

  Widget _buildMovieGrid() {
    List<Map<String, String>> movies = [
      {
        "image": 'assets/FilmCover5.png',
        "title": "BILA ESOK IBU TIADA",
        "rating": "9.2",
        "genre": "Drama, Keluarga"
      },
      {
        "image": 'assets/FilmCover3.png',
        "title": "SANTET SEGORO PITU",
        "rating": "9.0",
        "genre": "Horror"
      },
      {
        "image": 'assets/FilmCover.png',
        "title": "GLADIATOR II",
        "rating": "9.0",
        "genre": "Action, Adventure"
      },
      {
        "image": 'assets/FilmCover1.png',
        "title": "RED ONE",
        "rating": "9.3",
        "genre": "Action, Adventure"
      },
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    movies[index]['image']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movies[index]['title']!,
                      style: const TextStyle(
                          color: Colors.white, // Ubah warna ke putih
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 180, 180),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "R13+",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          movies[index]['genre']!,
                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          movies[index]['rating']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMovieGrid2() {
    List<Map<String, String>> movies = [
      {
        "image": 'assets/FilmCover1.png',
        "title": "BILA ESOK IBU TIADA",
        "rating": "9.2",
        "genre": "Drama, Keluarga"
      },
      {
        "image": 'assets/FilmCover2.png',
        "title": "SANTET SEGORO PITU",
        "rating": "9.0",
        "genre": "Horror"
      },
      {
        "image": 'assets/FilmCover3.png',
        "title": "GLADIATOR II",
        "rating": "9.0",
        "genre": "Action, Adventure"
      },
      {
        "image": 'assets/FilmCover4.png',
        "title": "RED ONE",
        "rating": "9.3",
        "genre": "Action, Adventure"
      },
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    movies[index]['image']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movies[index]['title']!,
                      style: const TextStyle(
                          color: Colors.white, // Ubah warna ke putih
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 180, 180),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "R13+",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 12),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          movies[index]['genre']!,
                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          movies[index]['rating']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
