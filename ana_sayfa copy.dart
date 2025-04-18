import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _countA = 0, _countB = 0;

  void _countScoreA() {
    _countA++;
    setState(() {});
  }

  void _countScoreB() {
    _countB++;
    setState(() {});
  }

  void _resetAll() {
    _countA = 0;
    _countB = 0;
    setState(() {});
  }

  Text _scoreA() {
    return Text(
      _countA.toString(),
      style: TextStyle(
        fontFamily: 'Digital7',
        fontSize: 100,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Text _scoreB() {
    return Text(
      _countB.toString(),
      style: TextStyle(
        fontFamily: 'Digital7',
        fontSize: 100,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'SKOR TABELASI',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(top: 13, right: 71, child: _scoreA()),
                    _incrementA(),
                  ],
                ),

                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(top: 13, right: 71, child: _scoreB()),
                    _incrementB(),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Takım A',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Takım B',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            IconButton(
              onPressed: _resetAll,
              icon: Icon(Icons.replay, size: 40),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _incrementA() {
    return GestureDetector(
      onTap: _countScoreA,
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  GestureDetector _incrementB() {
    return GestureDetector(
      onTap: _countScoreB,
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
