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
      body: SingleChildScrollView(
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
              'Как пользоваться приложением',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              '• Чтобы добавить метку, зайдите на экран "Карта" и нажмите на кнопку "+".\n'
              '• Чтобы поставить точку в указанном месте, перейдите на вкладку "Поиск", введите нужное место и нажмите на появившееся место.\n'
              '• Чтобы построить маршрут, сначала укажите точку на вкладке "Поиск", затем перейдите на вкладку "Навигация", '
              'выберите способ добраться туда и нажмите на кнопку "Начать".',
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
            const SelectableText(
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
