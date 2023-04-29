import 'dart:math';
import 'package:flutter/material.dart';
import '../../utils/dimens.dart';
import '../utils/colors.dart';

class CustomPaintCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var outerCirclePaint = Paint()
      ..color = DETAILS_SCREEN_OUTER_CIRCLE_COLOR
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke;

    var innerCirclePaint = Paint()
      ..color = DETAILS_SCREEN_INNER_CIRCLE_COLOR
      ..blendMode = BlendMode.srcOver
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;

    var middleCirclePaint = Paint()
      ..color = DETAILS_SCREEN_MIDDLE_CIRCLE_COLOR
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;

    var linePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        Offset(size.height / 2, size.width / 2), 150, outerCirclePaint);
    canvas.drawCircle(
        Offset(size.height / 2, size.width / 2), 145, innerCirclePaint);
    canvas.drawCircle(
        Offset(size.height / 2, size.width / 2), 90, middleCirclePaint);
    canvas.drawLine(const Offset(260, 150), const Offset(320, 150), linePaint);

    var dottedCirclePaint = Paint()..color = Colors.white;
    int numberOfDots = 20;
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    double filledCircleRadius = 2;
    double radiantStep = 2 * pi / numberOfDots;
    for (int i = 0; i < numberOfDots; i++) {
      canvas.drawCircle(
        Offset(centerX + sin(i * radiantStep) * 115,
            centerY + cos(i * radiantStep) * 115),
        filledCircleRadius,
        dottedCirclePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomCirclePaint extends StatelessWidget {
  const CustomCirclePaint({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SIZE_300X,
      width: SIZE_300X,
      child: CustomPaint(
        painter: CustomPaintCircle(),
      ),
    );
  }
}
