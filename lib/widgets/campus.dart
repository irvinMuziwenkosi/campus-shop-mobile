import 'package:flutter/material.dart';

class Campus extends StatefulWidget {
  const Campus({super.key});

  @override
  State<Campus> createState() => _CampusState();
}

class _CampusState extends State<Campus> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.black),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Westville Campus"),
          Icon(Icons.arrow_downward),
        ],
      ),
    );
  }
}
