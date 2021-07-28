import 'package:flutter/material.dart';
import 'package:katka/pages/maintable/maintable.dart';
import 'package:katka/pages/profile/profile.dart';
import 'package:katka/pages/chat/chat.dart';
import 'package:katka/pages/peoples/peoples.dart';
import 'package:katka/pages/maps/maps.dart';

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

enum ProfileFarther { edit, settings, exit }
enum ServicesFarther {
  maps,
  groups,
  review,
  partners,
  articles,
  projectnews,
  callback
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
              PopupMenuButton<ProfileFarther>(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/admin.png'),
                      radius: 18.0,
                    ),
                    Padding(padding: EdgeInsets.only(right: 10.0)),
                    Text('Админ',
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ],
                ),
                onSelected: (ProfileFarther result) {
                  setState(() {});
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<ProfileFarther>>[
                  const PopupMenuItem<ProfileFarther>(
                    value: ProfileFarther.edit,
                    child: Text('Редактировать профиль'),
                  ),
                  const PopupMenuItem<ProfileFarther>(
                    value: ProfileFarther.settings,
                    child: Text('Настройки'),
                  ),
                  const PopupMenuItem<ProfileFarther>(
                    value: ProfileFarther.exit,
                    child: Text('Выход'),
                  ),
                ],
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff1f282d),
        actions: [
          PopupMenuButton<ServicesFarther>(
            child: Row(
              children: [
                Icon(Icons.apps, color: Colors.white),
                Padding(padding: EdgeInsets.only(right: 3.0)),
                Text('Сервисы',
                    style: TextStyle(color: Colors.white, fontSize: 16.0))
              ],
            ),
            onSelected: (ServicesFarther result) {
              setState(() {});
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<ServicesFarther>>[
              PopupMenuItem<ServicesFarther>(
                  value: ServicesFarther.maps,
                  child: Row(
                    children: [
                      Icon(Icons.map_outlined),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text('Карты'),
                    ],
                  )),
              PopupMenuItem<ServicesFarther>(
                value: ServicesFarther.groups,
                child: Row(
                  children: [
                    Icon(Icons.groups_outlined),
                    Padding(padding: EdgeInsets.only(right: 5.0)),
                    Text('Группы'),
                  ],
                )
              ),
              PopupMenuItem<ServicesFarther>(
                value: ServicesFarther.review,
                child: Row(
                  children: [
                    Icon(Icons.reviews_outlined),
                    Padding(padding: EdgeInsets.only(right: 5.0)),
                    Text('Обзоры мест'),
                  ],
                )
              ),
              PopupMenuItem<ServicesFarther>(
                value: ServicesFarther.partners,
                child: Row(
                  children: [
                    Icon(Icons.shopping_basket_outlined),
                    Padding(padding: EdgeInsets.only(right: 5.0)),
                    Text('Партнёры'),
                  ],
                )
              ),
              PopupMenuItem<ServicesFarther>(
                value: ServicesFarther.articles,
                child: Row(
                  children: [
                    Icon(Icons.article_outlined),
                    Padding(padding: EdgeInsets.only(right: 5.0)),
                    Text('Статьи'),
                  ],
                )
              ),
              PopupMenuItem<ServicesFarther>(
                value: ServicesFarther.projectnews,
                child: Row(
                  children: [
                    Icon(Icons.new_releases_outlined),
                    Padding(padding: EdgeInsets.only(right: 5.0)),
                    Text('Новости проекта'),
                  ],
                )
              ),
              PopupMenuItem<ServicesFarther>(
                value: ServicesFarther.callback,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Обратная связь'),
                  ],
                )
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(right: 10.0)),
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
