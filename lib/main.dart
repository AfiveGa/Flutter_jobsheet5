import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absensi',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 239, 152, 31)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Absensi'),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String nomor;
  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  const TeksUtama({
    super.key,
    required this.nomor,
    required this.teks1,
    required this.teks2,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            nomor,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                teks1,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 71, 80),
                ),
              ),
              Text(
                teks2,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            TeksUtama(
              nomor: '26',
              teks1: 'Jurgen Klopp',
              teks2: 'STI202102LEGEND',
            ),
            Divider(),
            TeksUtama(
              nomor: '27',
              teks1: 'Lewandowski',
              teks2: 'STI202102ICON',
            ),
            Divider(),
            TeksUtama(
              nomor: '28',
              teks1: 'Afif Galih',
              teks2: 'STI202102196',
              backgroundColor: Color.fromARGB(255, 255, 244, 160),
            ),
            Divider(),
            TeksUtama(
              nomor: '29',
              teks1: 'Lionel Messi',
              teks2: 'STI202102GOAT',
            ),
            Divider(),
            TeksUtama(
              nomor: '30',
              teks1: 'Roberto Firmino',
              teks2: 'STI202102KING',
            ),
          ],
        ),
      ),
    );
  }
}
