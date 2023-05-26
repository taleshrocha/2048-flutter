import 'package:flutter/material.dart';

const Color lightBrown = Color.fromARGB(255, 205, 193, 180);
const Color darkBrown = Color.fromARGB(255, 187, 173, 160);
const Color tan = Color.fromARGB(255, 238, 228, 218);
const Color grayText = Color.fromARGB(255, 119, 110, 101);

const Map<int, Color> numTileColor = {
  2: tan,
  4: tan,
  8: Color.fromARGB(255, 242, 177, 121),
  16: Color.fromARGB(255, 245, 149, 99),
  32: Color.fromARGB(255, 246, 124, 95),
  64: Color.fromARGB(255, 246, 95, 64),
  128: Color.fromARGB(255, 235, 208, 177),
  256: Color.fromARGB(255, 237, 203, 103),
  512: Color.fromARGB(255, 236, 201, 85),
  1024: Color.fromARGB(255, 229, 194, 90),
  2048: Color.fromARGB(255, 232, 192, 70),
};

void main() {
  runApp(TwentyFortyEightApp());
}

class Tile {
  final int x;
  final int y;
  int val;

  Animation<double> animetedX;
  // Here

  Tile(this.x, this.y, this.val);
}

class TwentyFortyEightApp extends StatelessWidget {
  const TwentyFortyEightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2048',
      home: TwentyFortyEight(),
    );
  }
}

class TwentyFortyEight extends StatefulWidget {
  const TwentyFortyEight({super.key});

  @override
  TwentyFortyEightState createState() => TwentyFortyEightState();
}

class TwentyFortyEightState extends State<TwentyFortyEight> {
  @override
  Widget build(BuildContext context) {
    double gridSize = MediaQuery.of(context).size.width - 16.0 * 2;
    return Scaffold(
      backgroundColor: tan,
      body: Center(
        child: Container(
          width: gridSize,
          height: gridSize,
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: darkBrown,
          ),
        ),
      ),
    );
  }
}
