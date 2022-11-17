import 'package:flutter/material.dart';
import 'package:untitled/theme/theme.dart';

class TabbarButton extends StatelessWidget {
  const TabbarButton({
    Key? key,
    required this.label,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final String label;

  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          border: Border.all(
            color: AppTheme.defaultColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(36.0)),
        ),
        width: 100,
        height: 36.0,
        child: Center(
            child: Text(
          label,
          style: TextStyle(
            color: isActive ? AppTheme.defaultColor : Colors.white,
          ),
        )),
      ),
    );
  }
}
