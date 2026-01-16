import 'package:flutter/material.dart';

class YourLibraryScreen extends StatefulWidget {
  const YourLibraryScreen({super.key});

  @override
  State<YourLibraryScreen> createState() => _YourLibraryScreenState();
}

class _YourLibraryScreenState extends State<YourLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Your Library'));
  }
}
