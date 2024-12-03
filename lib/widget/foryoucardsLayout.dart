import 'dart:async';
import 'package:flutter/material.dart';

class Foryoucardslayout extends StatefulWidget {
  final List<String> imageUrls;

  const Foryoucardslayout({super.key, required this.imageUrls});

  @override
  _CardSliderState createState() => _CardSliderState();
}

class _CardSliderState extends State<Foryoucardslayout> {
  late final PageController _pageController;
  late Timer _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);

    // Timer untuk mengganti slide otomatis
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentIndex < widget.imageUrls.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          width: 490,
          child: PageView.builder(
            controller: _pageController,
            physics: BouncingScrollPhysics(),
            itemCount: widget.imageUrls.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Transform.scale(
                scale: _currentIndex == index ? 1 : 0.9,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    widget.imageUrls[index],
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
              );
            },
          ),
        ),
        SizedBox(height: 10), // Spasi antara slider dan box
        Align(
          alignment: Alignment.center,
          child: Container(
            
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 38, 39, 62).withOpacity(0.6), // Warna box indikator
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white54,
                width: 0.5
              ) // Sudut melengkung
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.imageUrls.length, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: _currentIndex == index ? 12 : 8,
                  height: 4,
                  decoration: BoxDecoration(
                    color: _currentIndex == index ? Color.fromARGB(255, 21, 25, 47) : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
