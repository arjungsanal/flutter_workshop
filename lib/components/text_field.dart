import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscure;

  const MyTextField({
    super.key,
    required this.obscure,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  obscureText: obscure,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),
                
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    ),

                    fillColor: const Color.fromRGBO(238, 238, 238, 1),
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Colors.grey[500]
                    )
                    
                  ),

                ),
              );
  }
}