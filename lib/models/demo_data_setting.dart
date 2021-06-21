import 'package:flutter/material.dart';

class Setting {
  String title;
  String subTitle;
  IconData icon;
String onpress;
  Setting(this.title, this.subTitle, this.icon,this.onpress);
}


List<Setting> set = [
  Setting('Language', 'Selected language: EN', Icons.language, '/aboutapp'),
  Setting('Profile', 'Update your data…', Icons.person, '/profile'),
  Setting('About App', 'What is notes app', Icons.mobile_screen_share, '/aboutapp'),
  Setting('About course', 'Describe the course in brief', Icons.info,'/profile'),
  Setting('Logout', 'Waiting your return…', Icons.power_settings_new, '/singin')
];