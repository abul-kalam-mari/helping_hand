import 'dart:io';

import 'package:flutter/material.dart';
import 'package:helping_hand/helping_hand.dart';
import 'package:helping_hand/spacing.dart';
import 'package:helping_hand/timestamps.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Helping Hand",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Example"),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              TextButton(
                onPressed: () async {
                  HelpingHand.instance.showError(
                      message: 'This is an error!', context: context);
                },
                child: const Text("Show Error"),
              ),
              16.0.height, //add 16p height in widget
              TextButton(
                onPressed: () async {
                  HelpingHand.instance.showInfo(
                      message: 'Helping hand developed by Abul Kalam',
                      context: context);
                },
                child: const Text("Show Info"),
              ),
              16.0.height, //add 16p height in widget
              TextButton(
                onPressed: () async {
                  HelpingHand.instance.showSuccess(
                      message: 'Its working perfectly', context: context);
                },
                child: const Text("Show Success"),
              ),
              16.height, //add 16p height in widget
              TextButton(
                onPressed: () async {
                  HelpingHand.instance.showWarning(
                      message: 'Some validations error!', context: context);
                },
                child: const Text("Show Warning"),
              ),
              16.0.height, //add 16p height in widget
              const Text('Developed on '),
              Row(
                children: [
                  Text(DateTime(2024, 5, 13, 14).timeElasped()),
                  16.0.width, //16p width
                  const Text("|"),
                  16.width, //16p width
                  Text(DateTime(2024, 5, 13, 14)
                      .timeElasped(showFullLabels: true)),
                ],
              ),
              16.height,
              TextButton(
                onPressed: () async {
                  HelpingHand.instance.showConfirmationDialog(
                    message: "Want to exist the app?",
                    context: context,
                    onConfirm: TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                        exit(0);
                      },
                      child: const Text("Exit"),
                    ),
                    onCancel: IconButton(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close),
                    ),
                  );
                },
                child: const Text("Close App"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
