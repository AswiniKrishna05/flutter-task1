import 'package:flutter/material.dart';
import 'package:flutter_task/screens/profile_screen.dart';
import '../models/user_model.dart';

class HomeScreen extends StatelessWidget {
  final User mockUser = User(
    name: 'Aswini Krishna',
    email: 'aswini@gmail.com',
    phone: '91 9800000000',
  );

  void navigateToprofile(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => Center(
              child: CircularProgressIndicator(),
            ));
    await Future.delayed(Duration(seconds: 2));
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProfileScreen(
                  user: mockUser,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter Internship'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => navigateToprofile(context),
            child: Text("View Profile")),
      ),
    );
  }
}
