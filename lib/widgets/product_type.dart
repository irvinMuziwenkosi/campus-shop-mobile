import 'package:flutter/material.dart';

class ProductType extends StatefulWidget {
  const ProductType({super.key});

  @override
  State<ProductType> createState() => _ProductTypeState();
}

class _ProductTypeState extends State<ProductType> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Column(
        children: [
          Icon(Icons.circle, size: 80),
          Text("Type"),
        ],
      ),
    );
  }
}
