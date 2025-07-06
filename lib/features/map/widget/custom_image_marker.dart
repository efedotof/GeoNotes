import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_notes/features/map/view/create_marker/cubit/create_marker_cubit.dart';
import 'package:geo_notes/features/saved/cubit/saved_cubit.dart';
import 'package:geo_notes/store/list_box/list_box.dart';

class CustomImageMarker extends StatelessWidget {
  final Uint8List imageBytes;
  final double size;
  final Color borderColor;
  final double borderWidth;
  final int index;
  final ListBox marker;

  const CustomImageMarker({
    super.key,
    required this.imageBytes,
    this.size = 48.0,
    this.borderColor = Colors.white,
    this.borderWidth = 4.0,
    required this.marker,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final imageSize = size - borderWidth * 2;
    final tailHeight = size * 0.2;

    return GestureDetector(
      onTap: () => context.read<CreateMarkerCubit>().showSavedNoteDialog(
          context: context,
          marker: marker,
          onDelete: () => context
              .read<SavedCubit>()
              .storeinterface
              .deleteListBox(index: index)),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: size - tailHeight * 0.8,
            child: CustomPaint(
              size: Size(size * 0.4, tailHeight),
              painter: _PinTailPainter(
                color: borderColor,
                shadowColor: Colors.black26,
              ),
            ),
          ),
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: borderColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(borderWidth),
              child: ClipOval(
                child: Image.memory(
                  imageBytes,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.person,
                    size: imageSize,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PinTailPainter extends CustomPainter {
  final Color color;
  final Color shadowColor;

  _PinTailPainter({
    required this.color,
    required this.shadowColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();
    final shadowPaint = Paint()
      ..color = shadowColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawPath(path, shadowPaint);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
