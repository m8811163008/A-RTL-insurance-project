import 'package:flutter/material.dart';
import 'package:untitled/theme/theme.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({Key? key, required this.label, required this.rowData})
      : super(key: key);
  final String label;
  final String rowData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Row(
            children: [
              const Icon(
                Icons.circle,
                size: 12.0,
                color: AppTheme.iconGrayColor,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                label,
                style: const TextStyle(color: AppTheme.textGrayColor),
              ),
            ],
          ),
          Flexible(
              child: Text(
            rowData,
            textAlign: TextAlign.left,
          ))
        ],
      ),
    );
  }
}
