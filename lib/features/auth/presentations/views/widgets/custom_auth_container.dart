import 'package:flutter/material.dart';

class CustomAuthContainer extends StatelessWidget {
  const CustomAuthContainer({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });
  final String text;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          IconButton(onPressed: () {}, icon: Icon(icon)),
        ],
      ),
    );
  }
}
