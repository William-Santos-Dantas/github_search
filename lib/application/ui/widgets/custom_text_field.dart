import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onSearch;

  const CustomTextField({Key? key, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      decoration: InputDecoration(
        hintText: 'Quem você esta procurando?',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
