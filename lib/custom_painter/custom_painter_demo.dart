
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var greenPaint = Paint()
    ..strokeWidth = 2.0
    ..color = Colors.green
    ..style = PaintingStyle.fill; // PaintingStyle.fill

    var redPaint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    var bluePaint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    var yellowPaint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    var purplePaint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    var blackPaint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    var circlePaint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    /**canvas.drawRect(Rect.fromCircle(center: Offset(size.width/2, size.height/2), radius: 88), rectPaint);
    canvas.drawCircle(Offset(size.width/2, size.height/2), 88, circlePaint);*/

    Offset point1 = Offset(0, 200);
    Offset point2 = Offset(50, 0);
    Offset point3 =Offset(250, 0);
    Offset point4 = Offset(250, 200);
    
    canvas.drawLine(point1, point2, greenPaint);
    canvas.drawLine(point2, point3, bluePaint);
    canvas.drawLine(point3, point4, redPaint);
    canvas.drawLine(point4, point1, blackPaint);

    canvas.drawLine(point2, point4, yellowPaint);
    canvas.drawLine(point1, point3, purplePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomPainterDemo extends StatelessWidget {
  const CustomPainterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CustomPaint(
          size: Size(
            300,
            300
          ),
          painter: DemoCustomPainter(),
        ),
      ),
    );
  }
}
