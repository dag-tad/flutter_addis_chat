import 'package:flutter/material.dart';
import 'package:flutter_chat_addis/components/postItem.dart';
import 'package:flutter_chat_addis/styles/appColors.dart';
import 'package:flutter_chat_addis/styles/appText.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<String> users = [];

  @override
  Widget build(BuildContext context) {
    _mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addis Chat'),
        centerTitle: false,
        backgroundColor: AppColors.background,
        actions: const [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        }
      ),
    );
  }

  _mockUsersFromServer() {
    for (int i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}
