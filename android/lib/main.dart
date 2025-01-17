import 'package:flutter/material.dart';
import 'profile.dart';
import 'qr.dart';

void main() {
  runApp(const PaseDeLista());
}

class PaseDeLista extends StatelessWidget {
  const PaseDeLista({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pase de lista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const ProfilePage(title: 'Pase de lista'),
    );
  }
}
