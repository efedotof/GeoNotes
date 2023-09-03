import 'dart:io';

import 'package:flutter/material.dart';
import 'package:notes_on_the_map/screens/Home.dart';
import 'package:notes_on_the_map/screens/modal/nodes.dart';

class InfoScreens extends StatefulWidget {
  const InfoScreens({super.key,
  required this.x,
  required this.y,
  required this.name,
  required this.description,
  required this.image,
  required this.deleteNote,
  
  });
  final double x;
  final double y;
  final String name;
  final String description;
  final File? image;
  final void Function() deleteNote;

  @override
  State<InfoScreens> createState() => InfoScreensState();
}

class InfoScreensState extends State<InfoScreens> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

   


  void pops(){
    Notes note = Notes(
    name: widget.name,
    description: widget.description,
    image: widget.image,
    x: widget.x,
    y: widget.y,
  );
  Navigator.pop(context, note);
  }



  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Информация о заметке'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
         pops();
        },
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          GestureDetector(
            onTap: () async {
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Закругляем углы
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                ),
                height: 300,
                width: 300,
                child: widget.image != null
                    ? Image.file(widget.image!, fit: BoxFit.cover,)
                    : Center(
                        child: Text(
                          'Добавьте изображение',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      TextField(
        controller: titleController,
        decoration: InputDecoration(
          hintText: widget.name,
        ),
        enabled: false, // Запрещаем ввод текста
      ),
      TextField(
        controller: descriptionController,
        decoration: InputDecoration(
          hintText: widget.description,
        ),
        enabled: false, // Запрещаем ввод текста
      ),
      ElevatedButton(
        onPressed: (){widget.deleteNote();},
        child: Text('Удалить'),
      ),
    ],
 

            ),
          ),
        ],
      ),
    ),
  );
}
}