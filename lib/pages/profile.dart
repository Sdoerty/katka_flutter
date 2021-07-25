import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'MAIN PAGE',
      style: optionStyle,
    ),
    Text(
      'PROFILE',
      style: optionStyle,
    ),
    Text(
      'MESSENGER',
      style: optionStyle,
    ),
    Text(
      'PEOPLES',
      style: optionStyle,
    ),
    Text(
      'MAPS',
      style: optionStyle,
    ),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
