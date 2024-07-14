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
              TextButton(onPressed: () {}, child: Text('Press Text Button')),
              OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.access_alarm,
                    size: 60,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
