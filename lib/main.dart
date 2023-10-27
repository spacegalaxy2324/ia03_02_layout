// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M08 - Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  final String title = 'Hello world!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ALVCustomRowWidget(rowColor: Colors.red, contentText: 'One'),
              ALVCustomRowWidget(rowColor: Colors.green, contentText: 'Two'),
              ALVCustomRowWidget(rowColor: Colors.blue, contentText: 'Three'),
            ],
          ),
          ALVCustomCenteredTextWidget(
              subtitle: 'Curs escolar 2023 - 2024',
              title: 'Adrián López Villalba'),
        ],
      )),
    );
  }
}

class ALVCustomCenteredTextWidget extends StatelessWidget {
  String subtitle;
  String title;

  ALVCustomCenteredTextWidget({
    super.key,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(subtitle),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}

class ALVCustomRowWidget extends StatelessWidget {
  MaterialColor rowColor;
  String contentText;

  ALVCustomRowWidget(
      {super.key, required this.rowColor, required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: rowColor,
      ),
      child: Text(contentText, style: Theme.of(context).textTheme.displaySmall),
    );
  }
}
