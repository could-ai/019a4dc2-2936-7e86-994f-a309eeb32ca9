import 'package:flutter/material.dart';

class IslamicBasicsScreen extends StatelessWidget {
  const IslamicBasicsScreen({super.key});

  final List<Map<String, String>> basics = const [
    {'title': 'الشهادتان', 'description': 'لا إله إلا الله محمد رسول الله. هذا هو أساس الإيمان.'},
    {'title': 'الصلاة', 'description': 'الصلاة ركن من أركان الإسلام، تصلى خمس مرات يوميًا.'},
    {'title': 'الزكاة', 'description': 'إعطاء جزء من المال للفقراء لتنقية الثروة.'},
    {'title': 'الصيام في رمضان', 'description': 'الامتناع عن الأكل والشرب من الفجر إلى المغرب.'},
    {'title': 'الحج', 'description': 'زيارة الكعبة في مكة لمن استطاع.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أساسيات الإسلام'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: basics.length,
        itemBuilder: (context, index) {
          final basic = basics[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(basic['title']!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text(basic['description']!),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.home),
        tooltip: 'العودة إلى الرئيسية',
      ),
    );
  }
}