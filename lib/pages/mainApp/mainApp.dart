import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:katka/pages/mainApp/maintable/maintable.dart';
import 'package:katka/pages/mainApp/profile/profile.dart';
import 'package:katka/pages/mainApp/chat/chat.dart';
import 'package:katka/pages/mainApp/peoples/peoples.dart';
import 'package:katka/pages/mainApp/groups/groups.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

enum ProfileFarther { edit, settings, exit }
enum ServicesFarther { maps, review, articles, partners, projectnews, callback }

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User user;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    user = await _auth.currentUser!;
    setState(() {});
  }

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
      Groups(),
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
                    Text('${user.email}',
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
                  value: ServicesFarther.review,
                  child: Row(
                    children: [
                      Icon(Icons.reviews_outlined),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text('Обзоры мест'),
                    ],
                  )),
              PopupMenuItem<ServicesFarther>(
                  value: ServicesFarther.articles,
                  child: Row(
                    children: [
                      Icon(Icons.article_outlined),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text('Статьи'),
                    ],
                  )),
              PopupMenuItem<ServicesFarther>(
                  value: ServicesFarther.partners,
                  child: Row(
                    children: [
                      Icon(Icons.shopping_basket_outlined),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text('Партнёры'),
                    ],
                  )),
              PopupMenuItem<ServicesFarther>(
                  value: ServicesFarther.projectnews,
                  child: Row(
                    children: [
                      Icon(Icons.new_releases_outlined),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text('Новости проекта'),
                    ],
                  )),
              PopupMenuItem<ServicesFarther>(
                  value: ServicesFarther.callback,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Обратная связь'),
                    ],
                  )),
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
            icon: Icon(Icons.groups),
            label: 'Группы',
            backgroundColor: Color(0xff1f282d),
          ),
        ],
      ),
    );
  }
}
