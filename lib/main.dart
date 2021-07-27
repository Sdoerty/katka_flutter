import 'package:flutter/material.dart';
import 'package:katka/pages/maintable.dart';
import 'package:katka/pages/profile.dart';
import 'package:katka/pages/chat.dart';
import 'package:katka/pages/peoples.dart';
import 'package:katka/pages/maps.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) =>Profile(),
      // },
      home: AllBars(),
    );
  }
}

class AllBars extends StatefulWidget {
  const AllBars({Key? key}) : super(key: key);

  @override
  _AllBarsState createState() => _AllBarsState();
}

class _AllBarsState extends State<AllBars> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*
    * ALL PAGES
    * */
    final List<Widget> _allPages = [
      MainTable(),
      Profile(),
      Chat(),
      Peoples(),
      Maps(),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      //Static AppBar
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/admin.png'),
                radius: 18.0,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Админ',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
        backgroundColor: Color(0xff1f282d),
        actions: [
          TextButton.icon(
              onPressed: () {},
              icon: Transform.scale(
                  scale: 0.8, child: Image.asset('assets/services.png')),
              label: Text(
                'Сервисы',
                style: TextStyle(color: Colors.white),
              )),
          Transform.scale(
            scale: 0.8,
            child: IconButton(
                onPressed: () {}, icon: Image.asset('assets/nav-bell.png')),
          )
        ],
      ),
      body: _allPages[_selectedIndex],
      //Static bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
            backgroundColor: Color(0xff1f282d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
            backgroundColor: Color(0xff1f282d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Чат',
            backgroundColor: Color(0xff1f282d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Люди',
            backgroundColor: Color(0xff1f282d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed_outlined),
            label: 'Карты',
            backgroundColor: Color(0xff1f282d),
          ),
        ],
      ),
    );
  }
}
