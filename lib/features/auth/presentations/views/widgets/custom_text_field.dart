import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  const CustomTextField({super.key, required this.hintText, required this.inputtype, this.icon});
  final String hintText;
  final TextInputType inputtype;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal  : 16.0, vertical: 8.0),
      child: TextFormField(
        keyboardType: inputtype,
        textAlign: TextAlign.end, 
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyles.medium15,
          filled: true,
          fillColor:const Color.fromARGB(179, 248, 239, 239), // Light background fill
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
          
          // Default border state
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFE2E8F0), 
              width: 1,
            ),
          ),
          
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.purple, 
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}