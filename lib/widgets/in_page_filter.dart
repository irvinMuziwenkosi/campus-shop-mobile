import 'package:flutter/material.dart';

class InPageFilter extends StatefulWidget {
  const InPageFilter({super.key});

  @override
  State<InPageFilter> createState() => _InPageFilterState();
}

class _InPageFilterState extends State<InPageFilter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
              side: const BorderSide(
                width: 1,
                color: Color(0xffb36bff),
              ),
            ),
          ),
        ),
        child: const Text("Show"),
      ),
    );
  }
}
