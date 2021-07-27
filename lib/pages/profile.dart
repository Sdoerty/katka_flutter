import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Text(
                  'Москва',
                  style: TextStyle(fontSize: 16.0, color: Colors.black54),
                ),
                Padding(padding: EdgeInsets.only(top: 5.0)),
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
                Padding(padding: EdgeInsets.only(top: 5.0)),
                /*
                * CONTAINER SUBSCRIBERS INFO
                * */
                Container(
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.black38))),
                  child: Container(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Подписчики: 156',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black54),
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Подписки: 1',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black54),
                                  ))
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Создано: 12',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black54),
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Участий: 2',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black54),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
                ),
                Container(
                    padding: const EdgeInsets.only(
                        left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.black38))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Интересы:',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.black54)),
                      ],
                    )),
                /*
                * CONTAINER ACTIVITIES
                * */
                Container(
                  padding: const EdgeInsets.only(
                      left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                  height: 80.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                      Container(
                        width: 70.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                        margin: const EdgeInsets.only(
                            left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black12,
                        )),
                        child: Image.asset('assets/bicycle.png'),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: Colors.teal,
                          labelColor: Color(0xff3f5561),
                          tabs: <Widget>[
                            Tab(
                              text: 'Мои',
                            ),
                            Tab(
                              text: 'Участвую',
                            ),
                            Tab(
                              text: 'Прошедшие',
                            ),
                          ],
                        ),
                        Container(
                          height: 200.0,
                          child: TabBarView(
                            children: <Widget>[
                              Center(
                                child: Text('Мои'),
                              ),
                              Center(
                                child: Text('Участвую'),
                              ),
                              Center(
                                child: Text('Прошедшие'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
