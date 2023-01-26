import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_getx/auth/auth_page.dart';
import 'package:flutter_getx/screens/catalog_screen.dart';



class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context, snapshot) {
          if(snapshot.hasData){
            return CatalogScreen();
          } else {
            return AuthPage(); 
          }  
         }
      ),
    );
  }
}