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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Etat Civil Selection'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> etat = ["Madame", "Mademoiselle", "Monsieur"];
  String valeur = "Madame";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Madame"),
                Radio(
                  value: etat[0],
                  groupValue: valeur,
                  onChanged: (Object? value) {
                    setState(() {
                      valeur = etat[0];
                    });
                    debugPrint("$valeur");
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text("Mademoiselle"),
                Radio(
                  value: etat[1],
                  groupValue: valeur,
                  onChanged: (Object? value) {
                    setState(() {
                      valeur = etat[1];
                    });
                    debugPrint("$valeur");
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text("Monsieur"),
                Radio(
                  value: etat[2],
                  groupValue: valeur,
                  onChanged: (Object? value) {
                    setState(() {
                      valeur = etat[2];
                    });
                    debugPrint("$valeur");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
