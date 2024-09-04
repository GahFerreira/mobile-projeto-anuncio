import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        backgroundColor:  Colors.deepOrange,
      ),
      body: ElevatedButton(onPressed: (){
        FirebaseAuth auth = FirebaseAuth.instance;
        auth.signOut();
        Navigator.pop(context);
      }, child: Text("Logout",style: TextStyle(color: Colors.black, fontSize: 20),),
        style: TextButton.styleFrom(backgroundColor: Colors.deepOrange),
      ),
    );
  }
}
