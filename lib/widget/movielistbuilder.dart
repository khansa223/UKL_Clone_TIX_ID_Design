import 'package:flutter/material.dart';

class MovieListBuilder extends StatelessWidget {
  final List<Movie> movies;

  const MovieListBuilder({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Tinggi widget card film
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: Container(
                width: 150, // Lebar card
                child: Stack(
                  children: [
                    // Poster Film
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        movie.imageUrl,
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                            child: Icon(Icons.error, color: Colors.red),
                          );
                        },
                      ),
                    ),
                    // Informasi Film (Judul dan Rating)
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6), // Transparansi hitam
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(12),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Judul Film
                            Expanded(
                              child: Text(
                                movie.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            // Rating dan Icon Bintang
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  "${movie.rating}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Model Movie untuk data film
class Movie {
  final String title;
  final String imageUrl;
  final double rating;
  final String year;

  Movie({
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.year,
  });
}
