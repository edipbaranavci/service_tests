import 'package:flutter/material.dart';

import 'features/views/user_list/view/user_list_view.dart';

void main() {
  runApp(const MyApp());
}

// ignore: public_member_api_docs
class MyApp extends StatelessWidget {
  // ignore: public_member_api_docs
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Tests',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserListView(),
    );
  }
}
