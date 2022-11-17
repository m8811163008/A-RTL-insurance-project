import 'package:flutter/material.dart';
import 'package:untitled/l10n/l10n.dart';
import 'package:untitled/theme/theme.dart';

class MarkCustomShape extends StatelessWidget {
  const MarkCustomShape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomPaint(
        size: Size(
            64,
            (110 * 0.5833333333333334)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(),
      ),
      Positioned(
        top: 8.0,
        right: 16,
        child: Text(
          context.l10n!.mySelf,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ]);
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = AppTheme.defaultColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width * 0.5100000, size.height * 0.6149068);
    path0.lineTo(0, size.height);
    path0.close();
    canvas.drawShadow(path0, Colors.grey, 6.0, false);
    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
