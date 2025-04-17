import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _count = 0;

  void _incrementcounter() {
    _count++;
    setState(() {});
  }

  void _resetcounter() {
    _count = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/zikirmatik.png', width: 300),
                Positioned(top: 55, right: 80, child: _counterText()),
                Positioned(bottom: 27, right: 103, child: _incrementButton()),

                Positioned(bottom: 114, right: 76, child: _resetButton()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: _resetcounter,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  Text _counterText() {
    return Text(
      _count.toString(),
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Digital7',
        fontSize: 50,
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: _incrementcounter,
      child: Container(
        width: 95,
        height: 95,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }
}
