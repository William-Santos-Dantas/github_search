import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onSearch;
  final String hintText;

  const CustomTextField({Key? key, required this.onSearch, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController c = TextEditingController();
    return TextField(
      controller: c,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: IconButton(
          onPressed: () {
            onSearch(c.text);
          },
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
