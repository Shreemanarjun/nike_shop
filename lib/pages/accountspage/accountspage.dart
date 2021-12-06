import 'package:flutter/material.dart';
import 'package:nike_shop/pages/homepage/widgets/customnavbar.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: const Center(
        child: Text("Accounts"),
      ),
    );
  }
}
