import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gp23/NavPage/Const.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    final credantial= FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Email:${credantial!.email}"),
            Text("Create date:${DateFormat('MMM,d,y').format(credantial.metadata.creationTime!)}"),
            Text("Sign in:${DateFormat('MMM,d,y').format(credantial.metadata.lastSignInTime!)}"),

            ElevatedButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, route1,(route)=>false);
            }, child: Text("Logout"))

          ],

        ),
      ),
    );
  }
}