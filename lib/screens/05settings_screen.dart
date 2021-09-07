//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_period/05_settings_file/01_account_page.dart';
import 'package:flutter_period/05_settings_file/01icon_widget.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SettingsGroup(
                title: 'General',
                children: <Widget>[
                  AccountPage(),
                  // NotificationPage(),
                  buildLogout(),
                  buildDeleteAccount(),
                ],
              ),
              const SizedBox(height: 32),
              SettingsGroup(
                title: "FeedBack",
                children: <Widget>[
                  const SizedBox(height: 8),
                  buildReportBug(context),
                  buildSendFeedback(context),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildLogout() => SimpleSettingsTile(
        title: 'Logout',
        subtitle: '',
        leading: IconWidgets(icon: Icons.logout, color: Colors.blueAccent),
    onTap: () {},
      );

  Widget buildDeleteAccount() => SimpleSettingsTile(
        title: 'Delete Account',
        subtitle: '',
        leading: IconWidgets(
          icon: Icons.delete,
          color: Colors.red,
        ),
    onTap: () {},
      );

  Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
    title: 'Report a Bug',
    subtitle: '',
    leading: IconWidgets(
      icon: Icons.bug_report,
      color: Colors.redAccent,
    ),
    onTap: () {},
  );

  Widget buildSendFeedback(BuildContext context) => SimpleSettingsTile(
    title: 'Send Feedback',
    subtitle: '',
    leading: IconWidgets(
      icon: Icons.star,
      color: Colors.purple,
    ),
    onTap: () {},
  );
}
