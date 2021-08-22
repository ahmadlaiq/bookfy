import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book/theme_provider.dart';
import 'package:book/change_theme_button_widget.dart';

class DarkMode extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'https://i.imgur.com/1P3upov.png'
        : 'https://i.imgur.com/8yXYjp4.png';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Dark Mode'),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Image.network(
                text,
        ),
      ),
    );
  }
}