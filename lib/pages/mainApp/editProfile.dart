import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String _date = "Not set";
  String _time = "Not set";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff1f282d),
          title: Text('Редактировать профиль',
              style: TextStyle(color: Colors.white, fontSize: 18.0)),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Form(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/admin.png', height: 150.0),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_a_photo_outlined),
                            iconSize: 50.0,
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border(top: BorderSide(color: Colors.black38))),
                        padding: EdgeInsets.all(28.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Имя'),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10.0)),
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Фамилия'),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10.0)),
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Город'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
