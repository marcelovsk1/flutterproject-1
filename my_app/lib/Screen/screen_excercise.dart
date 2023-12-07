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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){},
            child: const Text("Share picture"),
           ),
           const Text("Tutorial", style:
            TextStyle(fontWeight: FontWeight.bold,
            fontSize: 18,
           ),
           ),
           const Text(
            "Enter in your gallery, and choose one picture"),
            const Divider(),
            const Text(
              "Your Picture:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Text("Choose a caption for your pic")
        ],
      ),
    );
  }
}
