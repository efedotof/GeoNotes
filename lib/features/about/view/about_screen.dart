import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'GeoNotes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'GeoNotes — это удобное приложение для создания заметок на карте. '
              'Вы можете добавлять метки с описаниями, фотографиями и быстро находить важные места. '
              'Идеально подходит для путешествий, ведения полевых заметок или просто хранения воспоминаний.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Связаться с нами',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              'Если у вас есть предложения, пожелания или вы обнаружили баг — '
              'напишите нам на почту:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            SelectableText(
              'fedmehol@icloud.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueAccent,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
