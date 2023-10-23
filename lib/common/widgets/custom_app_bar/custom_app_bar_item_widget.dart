import 'package:flutter/material.dart';

class CustomAppBarItemWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  const CustomAppBarItemWidget({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(64.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontSize: 22.0,
            ),
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}
