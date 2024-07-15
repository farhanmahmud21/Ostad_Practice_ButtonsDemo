import 'package:flutter/material.dart';

void main() {
  runApp(Buttons());
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Button Demo'),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 6,
                        minimumSize: Size(100, 50),
                        shadowColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 5),
                        backgroundColor: Colors.amberAccent),
                    onPressed: () {},
                    label: Text('Press Elevated Button'),
                    icon: Icon(Icons.add_a_photo),
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Press Text Button')),
                  OutlinedButton(
                      onPressed: () {}, child: Text('Outlined Button')),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.access_alarm,
                        size: 60,
                      )),
                  GestureDetector(
                    onTap: () {
                      print('On Tap Gesture Detector');
                    },
                    child: Image.network(
                      'https://i0.wp.com/flutterexperts.com/wp-content/uploads/2024/04/1_DBbe3BaLTgNr3GlvjiIIgw.png?fit=960%2C553&ssl=1',
                      height: 170,
                      width: 190,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('On Tap Ink Well');
                    },
                    child: Image.network(
                      'https://www.scaler.com/topics/images/inkwell-flutter_thumbnail.webp',
                      height: 120,
                      width: 200,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
