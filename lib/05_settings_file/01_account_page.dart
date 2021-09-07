//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_period/05_settings_file/01icon_widget.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Account Settings',
        subtitle: 'Privacy, Security, Language',
        leading: IconWidgets(
          icon: Icons.person,
          color: Colors.greenAccent,
        ),
        child: SettingsScreen(
          title: 'Account Settings',
          children: <Widget>[
            buildPrivacy(context),
            buildSecurity(context),
            buildAccountInfo(context),
          ],
        ),
      );

  Widget buildPrivacy(BuildContext context) => SimpleSettingsTile(
        title: 'Privacy',
        subtitle: '',
        leading: IconWidgets(
          icon: Icons.lock,
          color: Colors.blueAccent,
        ),
        onTap: () {},
      );

  Widget buildSecurity(BuildContext context) => SimpleSettingsTile(
        title: 'Security',
        subtitle: '',
        leading: IconWidgets(
          icon: Icons.security,
          color: Colors.blueAccent,
        ),
        onTap: () {},
      );

  Widget buildAccountInfo(BuildContext context) => SimpleSettingsTile(
      title: 'Account Info',
      subtitle: '',
      leading: IconWidgets(
        icon: Icons.info,
        color: Colors.blueGrey,
      ),
      onTap: () {});
}
