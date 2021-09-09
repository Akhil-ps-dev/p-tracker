//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_period/05_settings_file/01_account_page.dart';
import 'package:flutter_period/05_settings_file/01icon_widget.dart';
import 'package:flutter_period/main.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings ',
            style: TextStyle(fontFamily: "lato"),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode),
                onPressed: () {
                  MyApp.themeNotifier.value =
                      MyApp.themeNotifier.value == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light;
                },
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SettingsGroup(
                title: 'General',
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  AccountPage(),
                  // NotificationPage(),
                  buildNotification(),
                ],
              ),
              const SizedBox(height: 32),
              SettingsGroup(
                title: "FeedBack",
                children: <Widget>[
                  const SizedBox(height: 30),
                  buildReportBug(context),
                  const SizedBox(
                    height: 20,
                  ),
                  buildSendFeedback(context),
                  const SizedBox(
                    height: 20,
                  ),
                  buildShare(context),
                  const SizedBox(
                    height: 20,
                  ),
                  buildHelp(context),
                  const SizedBox(
                    height: 20,
                  ),
                  buildLogout(),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildNotification() => SimpleSettingsTile(
        title: 'Notifications',
        subtitle: '',
        leading: IconWidgets(
          icon: Icons.message,
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

  Widget buildShare(BuildContext context) => SimpleSettingsTile(
        title: 'Share App',
        subtitle: '',
        leading: IconWidgets(
          icon: Icons.share,
          color: Colors.pink,
        ),
        onTap: () {},
      );

  Widget buildHelp(BuildContext context) => SimpleSettingsTile(
        title: 'Help',
        subtitle: '',
        leading: IconWidgets(
          icon: Icons.help,
          color: Colors.pink,
        ),
        onTap: () {},
      );

  Widget buildLogout() => SimpleSettingsTile(
        title: 'Logout',
        subtitle: '',
        leading: IconWidgets(icon: Icons.logout, color: Colors.blueAccent),
        onTap: () {},
      );
}
