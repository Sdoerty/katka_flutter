import 'dart:io';

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
    // Text(
    //   'MAIN PAGE',
    //   style: optionStyle,
    // ),
    // Text(
    //   'PROFILE',
    //   style: optionStyle,
    // ),
    // Text(
    //   'MESSENGER',
    //   style: optionStyle,
    // ),
    // Text(
    //   'PEOPLES',
    //   style: optionStyle,
    // ),
    // Text(
    //   'MAPS',
    //   style: optionStyle,
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      * APP BAR ---------------------
      * */
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

      /*
      * BODY --------------------------------
      * */
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 15.0)),
              CircleAvatar(
                backgroundImage: AssetImage('assets/admin.png'),
                radius: 80.0,
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Админ Админский',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1f282d)),
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 10.0,
                  )
                ],
              ),
              Text(
                'последний вход: 8 июня 2021г., 22:31',
                style: TextStyle(fontSize: 12.0, color: Colors.black38),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Сообщение'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff3f5561)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 10.0)),
                      SizedBox(
                        width: 150.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Добавить'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff3f5561)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              /*
              * CONTAINER SUBSCRIBERS INFO
              * */
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.black38))),
                child: Container(
                  child: 
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('Подписки: 0')
                              ],
                            ),
                            Column(
                              children: [
                                Text('Подписчики: 0')
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 15.0)),

                                Text('Создано: 0')
                              ],
                            ),
                            Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 15.0)),

                                Text('Участий: 0')
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                ),
              ),

              /*
              * CONTAINER CITY AND DATE
              * */
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.black38))),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 150.0,
                            child: Row(
                              children: [
                                Text('Город:'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text('Москва'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 25.0)),
                          SizedBox(
                            width: 150.0,
                            child: Row(
                              children: [
                                Text('Дата рождения:'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text('11.11.1991'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*
              * CONTAINER CITY SOCIAL MEDIA LINKS
              * */
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.black38))),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 150.0,
                            child: Row(
                              children: [
                                Text('Instagram:'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text('@captain.mountain'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150.0,
                            child: Row(
                              children: [
                                Text('VK:'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text('rom_sm'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150.0,
                            child: Row(
                              children: [
                                Text('Facebook:'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text('не заполнено'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      /*
      * BOTTOM NAVIGATION BAR --------------------------------
      * */
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
