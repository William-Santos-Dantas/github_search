import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onSearch;
  final String hintText;

  const CustomTextField({Key? key, required this.onSearch, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
