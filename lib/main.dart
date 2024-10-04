import 'package:flutter/material.dart';

void main() {
  runApp(Pointer());
}

class Pointer extends StatefulWidget {
  @override
  State<Pointer> createState() => _PointerState();
}

class _PointerState extends State<Pointer> {
  int TeamAPointer = 0;
  int TeamBPointer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Point Counter',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 37),
                    ),
                    Text(
                      '$TeamAPointer',
                      style: TextStyle(fontSize: 180),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          TeamAPointer++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          TeamAPointer += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          TeamAPointer += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 37),
                    ),
                    Text(
                      '$TeamBPointer',
                      style: TextStyle(fontSize: 180),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          TeamBPointer++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          TeamBPointer += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          TeamBPointer += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50)),
              onPressed: () {
                setState(() {
                  TeamAPointer = 0;
                  TeamBPointer = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
