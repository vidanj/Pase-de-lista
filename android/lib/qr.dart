import 'package:flutter/material.dart';

class QRPage extends StatefulWidget {
  const QRPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {


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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the QRPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(

          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          
          children: <Widget>[
              
              Row(children: [
              Expanded(child: Image.asset('images/QR.png'),)
              ], ),
            
              Row(children: [
                Expanded(child: Column(
                  children: [
                    Row(children: 
                      <Widget>[
                       Padding(padding: EdgeInsets.only(left: 16),
                        child: Icon(Icons.school),),
                        Text("Aplicaciones Móviles Multiplataforma", style: TextStyle(fontSize: 20),)
                      ],
                    ),

                    Row(children: 
                      <Widget>[
                        Padding(padding: EdgeInsets.only(left: 16),
                        child: Icon(Icons.school_outlined)),
                        Text("Aplicaciones de IoT", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ],
                ),),
              ],),
            ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR')
        ],
      ),
    );
  }
}
