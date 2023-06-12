import 'package:flutter/material.dart';
import 'package:flutter_go_router/utils/extensions/extension_navigation.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomListTile(
            title: 'About Us',
            onListTileTapped: () => context.navigator.navigateToAboutUsScreen(),
          ),
          CustomListTile(
            title: 'Contact Us',
            onListTileTapped: () =>
                context.navigator.navigateToContactUsScreen(),
          ),
          CustomListTile(
            title: 'Log Out',
            onListTileTapped: () => context.navigator.navigateToLoginScreen(
              extras: {
                'logout':'From Logout',
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {required this.title, required this.onListTileTapped, Key? key})
      : super(key: key);
  final String title;
  final Function() onListTileTapped;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(20.0),
      color: Colors.white,
      child: ListTile(
        contentPadding: const EdgeInsets.all(
          16.0,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        onTap: onListTileTapped,
        tileColor: Colors.blue[900],
        textColor: Colors.white,
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
