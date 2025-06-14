import 'package:flutter/material.dart';

class PollOptionWidget extends StatelessWidget {
  final String label;
  final String title;
  final bool isSelected;

  const PollOptionWidget({
    super.key,
    required this.label,
    required this.title,
    this.isSelected = false,
  });

  static const TextStyle _labelStyle = TextStyle(
    fontFamily: 'Arial',
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle _titleStyle = TextStyle(
    fontFamily: 'Arial',
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Letter label container (A, B, C, D)
        Container(
          width: 30,
          alignment: Alignment.center,
          child: Text(label, style: _labelStyle),
        ),

        // Poll option text container
        Expanded(
          child: Container(
            margin:  EdgeInsets.symmetric(vertical: 6),
            padding:  EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            decoration: BoxDecoration(
              color: isSelected ?  Color(0xFF25BAFF) : Colors.transparent,
              border: Border.all(
                color: isSelected ? Colors.blueAccent : Colors.white,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: _titleStyle,
            ),
          ),
        ),
      ],
    );
  }
}
