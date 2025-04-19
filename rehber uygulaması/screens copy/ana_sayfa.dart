import 'package:flutter/material.dart';

import '../models/models.dart';
import 'second_screen.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<ElemanlarModel> kisiler = [
    ElemanlarModel('Ali', '5365125014'),
    ElemanlarModel('Ergün', '5307745371'),
    ElemanlarModel('Seymen', '5324567892'),
    ElemanlarModel('Mahmut', '5365134314'),
    ElemanlarModel('Asım', '5307105871'),
    ElemanlarModel('Kerim', '5324567892'),
    ElemanlarModel('İlker', '5365125014'),
    ElemanlarModel('Selim', '5307745371'),
    ElemanlarModel('Murat', '5324567892'),
    ElemanlarModel('Kazım', '5365125014'),
    ElemanlarModel('Eren', '5307745371'),
    ElemanlarModel('Onur', '5324567892'),
    ElemanlarModel('Muhammet', '5365125014'),
    ElemanlarModel('Bahadır', '5307745371'),
    ElemanlarModel('Yavuz', '5323928592'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Kişiler',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.separated(
        itemCount: kisiler.length,
        itemBuilder:
            (context, index) => ListTile(
              title: Text(
                kisiler[index].isim,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(kisiler[index].no),
              trailing: Icon(Icons.chevron_right),
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(kisi: kisiler[index]),
                    ),
                  ),
            ),
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
