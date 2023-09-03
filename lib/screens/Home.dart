import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:notes_on_the_map/screens/AddNotes.dart';
import 'package:notes_on_the_map/screens/infoScreens.dart';
import 'package:notes_on_the_map/screens/modal/nodes.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  LatLng currentLocation = const LatLng(0, 0); // Начальные координаты
  MapController mapController = MapController();
  late AnimationController _pulseController;
  double idx = 0;

  double idy = 0;

  @override
  void initState() {
    super.initState();
    _loadData(); // Load data when the app starts
    _getCurrentLocation();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }


  // Add these methods to save and load data
  void _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    final notesString = notes.map((note) {
      return "${note.x},${note.y},${note.name},${note.description},${note.image?.path}";
    }).join(';');
    final mapMarkersString = mapMarkers.map((marker) {
      return "${marker.point.latitude},${marker.point.longitude}";
    }).join(';');
    await prefs.setString('notes', notesString);
    await prefs.setString('mapMarkers', mapMarkersString);
  }

  void _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final notesString = prefs.getString('notes');
    final mapMarkersString = prefs.getString('mapMarkers');

    // Создаем карту координат и заметок
    final coordinateToNoteMap = <LatLng, Notes>{};

    if (notesString != null) {
      final notesList = notesString.split(';');
      List<Notes> loadedNotes = [];

      for (String noteString in notesList) {
        final parts = noteString.split(',');
        if (parts.length == 5) {
          Notes note = Notes(
            x: double.parse(parts[0]),
            y: double.parse(parts[1]),
            name: parts[2],
            description: parts[3],
            image: File(parts[4]),
          );
          loadedNotes.add(note);

          // Добавляем соответствие координат и заметки
          coordinateToNoteMap[LatLng(note.x, note.y)] = note;

          _addNote(note);
        }
      }

      setState(() {
        notes = loadedNotes;
        print(notes);
      });
    }

    if (mapMarkersString != '') {
      final mapMarkersList = mapMarkersString!.split(';');
      setState(() {
        mapMarkers = mapMarkersList.map((markerString) {
          final parts = markerString.split(',');
          final markerLatLng =
              LatLng(double.parse(parts[0]), double.parse(parts[1]));
          return Marker(
            point: markerLatLng,
            builder: (BuildContext ctx) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  final note = coordinateToNoteMap[markerLatLng];
                  if (note != null) {
                    _navigateToInfoScreen(note);
                  }
                },
                icon: Icon(Icons.flag, color: Color(0xFFED7B7B),),
              ),
            ),
          );
        }).toList();
      });
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      final status = await Permission.location.request();
      Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
    forceAndroidLocationManager: true, // Для Android
  ).then((Position position) {
    setState(() {
      currentLocation = LatLng(position.latitude, position.longitude);
      idx = position.latitude;
      idy = position.longitude;
    });
    mapController.move(currentLocation, 17);
  });
    } catch (e) {
      print('Error: $e');
    }
  }

  void _moveToUserLocation() {
    _getCurrentLocation().then((_) {
      mapController.move(currentLocation, 17);
    });
  }
  void _zoomIn() {
    mapController.move(mapController.center, mapController.zoom + 1);
  }

  void _zoomOut() {
    mapController.move(mapController.center, mapController.zoom - 1);
  }

  void _create() async {
    print(notes.length);
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddNotes(
          x: idx,
          y: idy,
        ),
      ),
    );

    if (result != null && result is Notes) {
      _addNote(
          result); // Добавляем заметку в список после возврата с экрана добавления
      _addNotesMarkers();
      _saveData();
    }
  }

  void _addNote(Notes note) {
    setState(() {
      notes.add(note); // Добавляем заметку в список
    });
  }

  List<Notes> notes = [];

  void _addNotesMarkers() {
    final newMarkers = notes.map((note) {
      return Marker(
        point: LatLng(note.x, note.y),
        builder: (ctx) => GestureDetector(
          onTap: () {
            _navigateToInfoScreen(note);
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child:Icon(Icons.flag, color: Color(0xFFED7B7B),),
          ),
        ),
      );
    }).toList();

    setState(() {
      mapMarkers.clear(); // Очищаем существующие маркеры
      mapMarkers.addAll(newMarkers); // Добавляем новые маркеры
    });
  }

  void _navigateToInfoScreen(Notes note) {
  if (mapMarkers.isNotEmpty) {
    print("Navigating to InfoScreens: ${note.name}");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InfoScreens(
          x: note.x,
          y: note.y,
          name: note.name,
          description: note.description,
          image: note.image,
          deleteNote:()=> _deleteNote(note), // Pass a reference to the deleteNote function
        ),
      ),
    );
  } else {
    print('пуст');
  }
}


 void _deleteNote(Notes note) {
  print("notes: ${notes.length} mapMarkers: ${mapMarkers.length}");
  setState(() {
    notes.remove(note); // Удаляем заметку из списка

    // Remove the marker by comparing note coordinates with marker coordinates
    mapMarkers.removeWhere((marker) =>
        marker.point.latitude == note.x &&
        marker.point.longitude == note.y);

    _saveData(); // Сохраняем обновленные данные
    Navigator.pop(context);
    print("notes: ${notes.length} mapMarkers: ${mapMarkers.length}"); // Возвращаемся на предыдущий экран
  });
}

  List<Marker> mapMarkers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: FlutterMap(
                  options: MapOptions(
                    zoom: 15.5,
                    maxZoom: 17,
                    minZoom: 3.5,
                  ),
                  mapController: mapController,
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.efedotov.notes_on_the_map',
                      retinaMode: true,
                    ),
                    MarkerLayer(markers: [
                      Marker(
                        point: currentLocation,
                        width: 25,
                        height: 25,
                        builder: (ctx) => ScaleTransition(
                          scale: Tween<double>(begin: 1.0, end: 1.1)
                              .animate(_pulseController),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF836096),
                            ),
                          ),
                        ),
                      ),
                      Marker(
                        point: currentLocation,
                        width: 20,
                        height: 20,
                        builder: (ctx) => Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEBE76C),
                          ),
                        ),
                      ),
                      ...mapMarkers,
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFF0B86E),
              ),
              child:
                  IconButton(onPressed: _zoomIn, icon: const Icon(Icons.add)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFF0B86E),
              ),
              child: IconButton(
                  onPressed: _zoomOut,
                  icon: const Icon(Icons.minimize_outlined)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFF0B86E),
              ),
              child: IconButton(
                  onPressed: _create, icon: const Icon(Icons.create)),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed:
                  _moveToUserLocation, // При нажатии на кнопку перемещаем карту
              child: const Icon(Icons.my_location),
            ),
          ],
        ),
      ),
    );
  }
}
