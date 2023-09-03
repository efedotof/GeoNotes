import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:notes_on_the_map/screens/Home.dart';
import 'package:notes_on_the_map/screens/modal/nodes.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key,
  required this.x,
  required this.y,
  
  
  });
  final double x;
  final double y;

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();




  void _addNote() {
    String title = titleController.text;
    String description = descriptionController.text;
    
  



  // Создаем объект заметки
  Notes note = Notes(
    name: title,
    description: description,
    image: _image,
    x:widget.x,
    y:widget.y,
  );

  Navigator.pop(context, note); // Передаем заметку обратно на предыдущий экран

  }

  File? _image;

  Future _getImage() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(returnedImage!.path);

    });
  }


  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Добавить заметку'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
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
              print('Tap');
              await _getImage();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Закругляем углы
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                ),
                height: 300,
                width: 300,
                child: _image != null
                    ? Image.file(_image!, fit: BoxFit.cover,)
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
                    hintText: 'Введите название',
                  ),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: 'Введите описание',
                  ),
                ),
                ElevatedButton(
                  onPressed: _addNote,
                  child: Text('Добавить'),
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