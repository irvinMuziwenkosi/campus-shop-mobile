import 'package:campus_shop/widgets/in_page_filter.dart';
import 'package:campus_shop/widgets/product_type.dart';
import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductType(),
                ProductType(),
                ProductType(),
                ProductType(),
                ProductType(),
                ProductType(),
                ProductType()
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  InPageFilter(),
                  InPageFilter(),
                  InPageFilter(),
                  InPageFilter(),
                  InPageFilter(),
                  InPageFilter(),
                  InPageFilter(),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 0,
                  margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  color: Color(0xffb36bff),
                  child: SizedBox(width: 340, height: 180),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
