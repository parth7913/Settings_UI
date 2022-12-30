import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Settings UI"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text("Common", style: TextStyle(color: Colors.red)),
                  list(Icons.language, "Language", "English", Text("")),
                  list(Icons.cloud_outlined, "Environment", "Production", Text("")),
                  Text("Account", style: TextStyle(color: Colors.red)),
                  list(Icons.call, "Phone number", "",Text("")),
                  list(Icons.email, "Email", "", Text("")),
                  list(Icons.exit_to_app_outlined, "Sign out", "", Text("")),
                  Text("Security", style: TextStyle(color: Colors.red)),
                  list(
                      Icons.security_update,
                      "Lock app in background",
                      "",
                      Switch(
                        activeColor: Colors.red,
                        value: true,
                        onChanged: (value) {},
                      )),
                  list(
                      Icons.fingerprint,
                      "Use fingerprint",
                      "",
                      Switch(
                        value: false,
                        onChanged: (value) {},
                      )),
                  list(
                      Icons.lock,
                      "Change password",
                      "",
                      Switch(
                        activeColor: Colors.red,
                        value: true,
                        onChanged: (value) {},
                      )),
                  Text("Misc", style: TextStyle(color: Colors.red)),
                  list(Icons.dock_outlined, "Terms of Service", "", Text("")),
                  list(Icons.source, "Sign out", "", Text("")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget list( leading, String title, stitle,Widget trailing,) {
    return ListTile(
      leading: Icon(leading),
      title: Text("$title"),
      subtitle: Text("$stitle"),
      trailing: trailing,
    );
  }
}
