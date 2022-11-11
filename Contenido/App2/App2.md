# App 2

````
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi App',
        home: Scaffold(
            // ignore: prefer_const_constructors
            appBar: AppBar(title: Text('Identificador de persona')),
            body: Column(children: [
              const SizedBox(height: 20.0),
              const Text('Armando Leones'),
              const SizedBox(height: 20.0),
              const Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTd8pMwLzTXlNR3ra4-KwsOdYTQj9VrJDl60yVU8al6AaNyxoQzomU4xQboHGRqXpx2hc&usqp=CAU'),
              ),
              const SizedBox(height: 10.0),
              const Text('armandoleones@gmail.com'),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children:[
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 24.0,
                    semanticLabel: 'Text to annouce in accessibility modes',
                  ),
                  const Icon(
                    Icons.music_note,
                    color: Colors.green, 
                    size: 24.0
                    ),
                  const Icon(Icons.access_alarms, color: Colors.amber, size: 24.0)
                ],
              )
            ])));
  }
}
````