import 'package:flutter/material.dart';

class screenExcercise extends StatelessWidget {
  const screenExcercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Wonderful World")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("It was clicked!");
        }, child: Icon(Icons.add)),
        body: Column(children: [
          ElevatedButton(onPressed: (){},
           child: Text("Share picture"),
           ),
        ],
      ),
    );
  }
}
