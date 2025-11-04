import 'package:flutter/material.dart';

class PrayerStepsScreen extends StatelessWidget {
  const PrayerStepsScreen({super.key});

  final List<String> steps = const [
    '1. الوضوء: اغسل وجهك ويديك وأطرافك بالماء.',
    '2. التكبير: قل الله أكبر وارفع يديك.',
    '3. القراءة: اقرأ سورة الفاتحة.',
    '4. الركوع: انحنِ وقل سبحان ربي العظيم.',
    '5. السجود: اسجد وقل سبحان ربي الأعلى.',
    '6. التشهد: اجلس وقل التشهد.',
    '7. السلام: قل السلام عليكم وارحموا.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('خطوات الصلاة'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: steps.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
                backgroundColor: Colors.green,
              ),
              title: Text(steps[index], style: const TextStyle(fontSize: 18)),
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