import 'package:flutter/material.dart';
import 'package:theme_manager/config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Manager'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Light Theme Mode'),
                onPressed: currentAppTheme.useLightThemeMode,
              ),
              RaisedButton(
                child: Text('Dark Theme Mode'),
                onPressed: currentAppTheme.useDarkThemeMode,
              ),
              RaisedButton(
                child: Text('System Theme Mode'),
                onPressed: currentAppTheme.useSystemThemeMode,
              ),
              RaisedButton(
                child: Text('Switch Theme Mode'),
                onPressed: currentAppTheme.switchThemeMode,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
