import 'package:flutter/material.dart';
import 'qr.dart'; import 'profile.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>  _HomePage();
}

class _HomePage extends State<HomePage> {
  final List  <Widget> pages = [
    const ProfilePage(title: 'Pase de Lista'),
    const QRPage(title: 'Codigo QR')
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: pages[currentPage],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
         
          BottomNavigationBarItem(icon: Icon(Icons.person) , label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code) , label: 'QR'),

          // BottomNavigationBarItem(icon: ElevatedButton(
          //   onPressed:(){
          //     Navigator.push(context, 
          //     MaterialPageRoute(builder: (context) => const QRPage(title: 'Código QR')));
          //   }, child: Icon(Icons.qr_code)
          //   ), label: 'QR')
        ],
      ),
    );
  }
}
