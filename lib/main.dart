//JOHELIN pASCUAL PEREZ AVLDEZ
import 'package:flutter/material.dart';
import 'current-time-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const CurrentTimeView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tarea flutter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Fecha',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Contenedor para la imagen circular con borde
          Container(
            width: 250, // Ancho del contenedor
            height: 250, // Alto del contenedor
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Forma circular
              border: Border.all(
                color: Colors.orange, // Color del borde
                width: 4, // Grosor del borde
              ),
              image: const DecorationImage(
                image: AssetImage('assets/images/foto2x2.jpg'),
                fit: BoxFit.cover, // Mantiene la relación de aspecto
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Johelin Pascual Perez Valdez",
            style: TextStyle(fontSize: 24),
          ),
          const Text(
            "Matricula: 2022-1131",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
