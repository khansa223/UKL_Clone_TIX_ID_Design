import 'package:flutter/material.dart';

class ButtonPendukung extends StatelessWidget {
  const ButtonPendukung({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Mengatur scroll secara horizontal
        child: Row(
          children: [
            _buildButton(context, "Semua Film", true),
            const SizedBox(width: 10),
            _buildButton(context, "XXI", false),
            const SizedBox(width: 10),
            _buildButton(context, "CGV", false),
            const SizedBox(width: 10),
            _buildButton(context, "Cinépolis", false),
            const SizedBox(width: 10),
            _buildButton(context, "Watchlist", false, icon: Icons.favorite_border),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, bool isSelected, {IconData? icon}) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected ? Color.fromARGB(255, 23, 23, 43) : Colors.black,
        side: BorderSide(color: isSelected ? Colors.grey : Colors.grey),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        // Tambahkan logika tombol di sini
      },
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, size: 16, color: isSelected ? Colors.blue : Colors.white),
            const SizedBox(width: 5),
          ],
          Text(
            text,
            style: TextStyle(
              color: isSelected ? const Color.fromARGB(255, 181, 181, 181) : Colors.white,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
