import 'dart:io';

import 'package:flutter/material.dart';
import 'package:notes_on_the_map/screens/modal/nodes.dart';

class NoteInfoOverlay extends StatelessWidget {
  final Notes note;

  NoteInfoOverlay(this.note);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50, // Расположите виджет где вам удобно
      left: 10, // Расположите виджет где вам удобно
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(note.description),
            // Добавьте другие элементы информации, как изображение, при необходимости
          ],
        ),
      ),
    );
  }
}