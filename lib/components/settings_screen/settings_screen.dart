import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/settings_screen/settings_icons.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: Colors.white, width: 0.1)),
          title: Text('Ayarlar'),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                      height: 0.6,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView(
                    children: [
                      SettingsIcons(
                        icon: Icons.person_add,
                        text: 'Arkadaşları Takip Et ve Davet Et',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.notifications,
                        text: 'Bildirimler',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.lock_outline,
                        text: 'Gizlilik',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.co_present_outlined,
                        text: 'Gözetim',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.shield_outlined,
                        text: 'Güvenlik',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.margin,
                        text: 'Reklamlar',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.person_outlined,
                        text: 'Hesap',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.question_mark_rounded,
                        text: 'Yardım',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.info_outlined,
                        text: 'Hakkında',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SettingsIcons(
                        icon: Icons.color_lens,
                        text: 'Tema',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.abc,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Meta',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Hesaplar Merkezi',
                        style: TextStyle(color: Colors.blue),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(text: "sdfdgfsdfgfdsghdfghgdhjfghjfhg"),
                            TextSpan(
                              text: " Mojfhkjhgkjgjklhgjlkbile Apps",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
