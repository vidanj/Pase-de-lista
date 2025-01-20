import 'package:flutter/material.dart';
import 'package:pase_de_lista/qr.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(          
          children: <Widget>[
              
              Row(children: [
              Expanded(child: Image.asset('images/profilePicture.jpg'),)
              ], ),
            
              Row(children: [
                Expanded(child: Column(
                  children: [
                    //Nombre
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[     
                        Text("Efrén Campuzano", style: TextStyle(fontSize: 40),)
                      ],
                    ),
                    //Matricula
                    Row(children: 
                      <Widget>[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.numbers_rounded)),
                        Text("20311009", style: TextStyle(fontSize: 20))
                      ],
                    ),
                    //Correo
                    Row(children: 
                      <Widget>[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.email)),
                        Text("a20311009@uthermosillo.edu.mx", style: TextStyle(fontSize: 20))
                      ],
                    ),
                    //Telefono
                    Row(children: 
                      <Widget>[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.phone)),
                        Text("+52 6623517116", style: TextStyle(fontSize: 20))
                      ],
                    ),
                    //Grupo
                    Row(children: 
                      <Widget>[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.location_on)),
                        Text("DS 5-2", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ],
                ),),
              ],),
            ],
      ),
      
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentPage,
      //   onTap: (value) {
      //     setState(() {
      //       currentPage = value;
      //     });
      //   },
      //   items: const [
      //     //Navegacion por elevated button 
      //     BottomNavigationBarItem(icon: Icon(Icons.person) , label: 'Perfil'),
      //     BottomNavigationBarItem(icon: Icon(Icons.qr_code) , label: 'Perfil'),

      //     // BottomNavigationBarItem(icon: ElevatedButton(
      //     //   onPressed:(){
      //     //     Navigator.push(context, 
      //     //     MaterialPageRoute(builder: (context) => const QRPage(title: 'Código QR')));
      //     //   }, child: Icon(Icons.qr_code)
      //     //   ), label: 'QR')
      //   ],
      // ),
    );
  }
}
