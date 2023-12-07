import 'package:flutter/material.dart';

class screenExcercise extends StatelessWidget {
  const screenExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Wonderful World")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("It was clicked!");
        },
        child: const Icon(Icons.add),
        ),
        body: Column(children: [
          ElevatedButton(onPressed: (){},
           child: const Text("Share picture"),
           ),
           const Text("Tutorial", style:
           TextStyle(fontWeight: FontWeight.bold,
           fontSize: 18),
           ),
        ],
      ),
    );
  }
}
