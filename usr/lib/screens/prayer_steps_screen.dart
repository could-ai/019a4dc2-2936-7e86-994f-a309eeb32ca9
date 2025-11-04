import 'package:flutter/material.dart';

class PrayerStepsScreen extends StatelessWidget {
  const PrayerStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> steps = [
      '1. النية: اجعل نيتك للصلاة.',
      '2. التكبير: قل الله أكبر.',
      '3. القراءة: اقرأ الفاتحة وما تيسر.',
      '4. الركوع: اركع وقل سبحان ربي العظيم.',
      '5. الرفع: ارفع رأسك وقل ربنا ولك الحمد.',
      '6. السجود: اسجد وقل سبحان ربي الأعلى.',
      '7. السلام: قل السلام عليكم وارحموا.',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('خطوات الصلاة'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightGreenAccent, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: steps.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text(
                  steps[index],
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}