import 'package:flutter/material.dart';

import 'package:spotify_clone/models/colors.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({super.key, required this.label});

  final String label;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: _isSelected
            ? SpotifyColors.black
            : SpotifyColors.white,
        backgroundColor: _isSelected
            ? SpotifyColors.green
            : SpotifyColors.mediumGrey,
      ),
      child: Text(widget.label),
    );
  }
}
