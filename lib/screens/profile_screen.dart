import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/profile_info_card.dart';
import '../models/user_model.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pic1.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            ProfileInfoCard(label: "Name", value: "Aswini Krishna"),
            ProfileInfoCard(label: "Email", value: "aswini@gmail.com"),
            ProfileInfoCard(label: "phone", value: "91 9800000000"),
            Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
