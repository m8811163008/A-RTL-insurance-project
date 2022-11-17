import 'package:flutter/material.dart';

class HexaShape extends StatelessWidget {
  const HexaShape({
    Key? key,
    this.icon = Icons.check,
    this.size = 48,
    this.color = const Color(0xff1cae81),
  }) : super(key: key);
  final IconData icon;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      CustomPaint(
        size: Size(
            size,
            (size)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: HexaCustomPainter(color: color),
      ),
      Icon(
        icon,
        size: size - 12.0,
        color: Colors.white,
      )
    ]);
  }
}

class HexaCustomPainter extends CustomPainter {
  final Color color;
  const HexaCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height);
    path0.lineTo(size.width, size.height * 0.7800000);
    path0.lineTo(size.width, size.height * 0.2066667);
    path0.lineTo(size.width * 0.5000000, 0);
    path0.lineTo(0, size.height * 0.2133333);
    path0.lineTo(0, size.height * 0.7866667);
    path0.lineTo(size.width * 0.5000000, size.height);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
