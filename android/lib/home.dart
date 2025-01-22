import 'package:flutter/material.dart';
import 'qr.dart'; import 'profile.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() =>  _HomePage();
}

class _HomePage extends State<HomePage> {
  final List<Widget> _pages = [
    const ProfilePage(),
    const QRPage()
  ];

  int _currentPage = 0;

  void _pageSelected(int pageIndex){
    setState(() {
       _currentPage = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: _pages[_currentPage],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          _pageSelected(index);
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
