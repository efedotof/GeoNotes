import 'dart:io';

import 'package:flutter/material.dart';

class Notes{
  Notes({required this.image, required this.name, required this.x, required this.y, required this.description});
  final File? image;
  final String name;
  final double x;
  final double y;
  final String description;

  
}