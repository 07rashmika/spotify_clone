import 'package:flutter/material.dart';
import 'package:spotify_clone/data/button_labels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            for (var label in homeButtonLabels)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: ElevatedButton(onPressed: () {}, child: Text(label)),
              ),
          ],
        ),
      ),
    );
  }
}
