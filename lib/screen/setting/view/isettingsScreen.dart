import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iSettings extends StatefulWidget {
  const iSettings({Key? key}) : super(key: key);

  @override
  State<iSettings> createState() => _iSettingsState();
}

class _iSettingsState extends State<iSettings> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.destructiveRed,
        middle: Text(
          "Settings UI",
          style: TextStyle(color: CupertinoColors.white, fontSize: 20),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Common",
                    style: TextStyle(color: CupertinoColors.systemGrey)),
                list(
                    CupertinoIcons.globe,
                    "Language",
                    "",
                    SizedBox(
                      width: 85,
                      child: Row(
                        children: [
                          Text(
                            "English",
                            style: TextStyle(color: CupertinoColors.systemGrey),
                          ),
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    )),
                list(
                    CupertinoIcons.cloud,
                    "Environment",
                    "",
                    SizedBox(
                      width: 115,
                      child: Row(
                        children: [
                          Text(
                            "Production",
                            style: TextStyle(color: CupertinoColors.systemGrey),
                          ),
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    )),
                Text("Account",
                    style: TextStyle(color: CupertinoColors.systemGrey)),
                list(
                    CupertinoIcons.phone_solid,
                    "Phone number",
                    "",
                    SizedBox(
                      width: 30,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    )),
                list(
                    CupertinoIcons.mail_solid,
                    "Email",
                    "",
                    SizedBox(
                      width: 30,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    )),
                list(
                    CupertinoIcons.square_arrow_right,
                    "Sign out",
                    "",
                    SizedBox(
                      width: 30,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    )),
                Text("Security",
                    style: TextStyle(color: CupertinoColors.systemGrey)),
                list(
                    CupertinoIcons.device_phone_portrait,
                    "Lock app in background",
                    "",
                    CupertinoSwitch(
                      activeColor: CupertinoColors.destructiveRed,
                      value: true,
                      onChanged: (value) {},
                    )),
                list(
                    CupertinoIcons.lock_open_fill,
                    "Use fingerprint",
                    "",
                    CupertinoSwitch(
                      activeColor: CupertinoColors.destructiveRed,
                      trackColor: CupertinoColors.inactiveGray,
                      value: false,
                      onChanged: (value) {},
                    )),
                list(
                    CupertinoIcons.lock_fill,
                    "Change password",
                    "",
                    CupertinoSwitch(
                      activeColor: CupertinoColors.destructiveRed,
                      value: true,
                      onChanged: (value) {},
                    )),
                Text("Misc",
                    style: TextStyle(color: CupertinoColors.inactiveGray)),
                list(
                    CupertinoIcons.doc_text_fill,
                    "Terms of Service",
                    "",
                    SizedBox(
                      width: 30,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    )),
                list(
                    CupertinoIcons.sort_up_circle_fill,
                    "Open source licence",
                    "",
                    SizedBox(
                      width: 30,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget list(
    leading,
    String title,
    stitle,
    Widget trailing,
  ) {
    return CupertinoListTile(
      leading: Icon(
        leading,
        color: CupertinoColors.systemGrey,
      ),
      title: Text(
        "$title",
        style: TextStyle(
          color: CupertinoColors.systemGrey,
        ),
      ),
      subtitle: Text("$stitle"),
      trailing: trailing,
    );
  }
}
