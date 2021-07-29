import 'package:flutter/material.dart';

class MainTable extends StatefulWidget {
  const MainTable({Key? key}) : super(key: key);

  @override
  _MainTableState createState() => _MainTableState();
}

class _MainTableState extends State<MainTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 10.0)),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Создать'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff3f5561)),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Москва',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Санкт-Петербург',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Казань',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Нижний Новгород',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Великий Новгород',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Екатеринбург',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Москва',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Москва',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0.5, 8, 0.5),
                      height: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16)),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: Text(
                            'Москва',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1f282d)),
                          ),
                          subtitle: Text('12.03.2021 - 17:00'),
                          // trailing: Icon(Icons.arrow_forward_ios),
                          leading: Image.asset(
                            'assets/bicycle.png',
                            width: 40.0,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          dense: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
