import 'package:flutter/material.dart';
import 'package:katka/auth.dart';
import 'package:katka/pages/mainApp/mainApp.dart';
import 'pages/login.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key, required this.auth}) : super(key: key);
  final BaseAuth auth;

  @override
  _RootPageState createState() => _RootPageState();
}

enum AuthStatus { notSignIn, signIn }

class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.notSignIn;

  @override
  void initState() {
    super.initState();
    widget.auth.currentUser().then((userID) {
      setState(() {
        // authStatus = userID == null ? AuthStatus.notSignIn : AuthStatus.signIn;
      });
    });
  }

  void _signedIn(){
    setState((){
      authStatus = AuthStatus.signIn;
    });
  }

  void _signedOut(){
    setState((){
      authStatus = AuthStatus.notSignIn;
    });
  }


  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignIn:
        return Login(auth: widget.auth, onSignedIn: _signedIn,);
      case AuthStatus.signIn:
        return Container(
          child: MainApp(auth: widget.auth, onSignedOut: _signedOut ,)
        );
    }
  }
}
