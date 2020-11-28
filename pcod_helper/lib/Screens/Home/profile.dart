import 'package:flutter/material.dart';
import 'package:pcod_helper/Services/Database.dart';
import 'package:pcod_helper/Services/auth.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Auth _auth = new Auth();
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
