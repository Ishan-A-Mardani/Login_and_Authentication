import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const myButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.all(25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
    // return GestureDetector(
    //   onTap: onTap,
    // child: Container(
    //   padding: const EdgeInsets.all(25),
    //   margin: const EdgeInsets.symmetric(horizontal: 25.0),
    //   decoration: BoxDecoration(
    //     color: Colors.black,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: const Center(
    //     child: Text(
    //       'Sign In',
    //       style: TextStyle(
    //         color: Colors.white,
    //         fontWeight: FontWeight.bold,
    //         fontSize: 16,
    //       ),
    //     ),
    //   ),
    // ),
    // );
  }
}
