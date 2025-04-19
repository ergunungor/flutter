import 'package:flutter/material.dart';
import '../models/models.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.kisi});

  final ElemanlarModel kisi;

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

      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(radius: 90, child: Icon(Icons.person, size: 90)),
              Text(kisi.isim, style: TextStyle(fontSize: 40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  Text(
                    '+90 ${kisi.no}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
