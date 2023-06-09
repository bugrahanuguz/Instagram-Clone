import 'package:flutter/material.dart';
import 'package:instagram_clone/components/settings_screen/settings_screen.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: const [
              Text("bugrahan_uguz"),
              Icon(Icons.arrow_drop_down)
            ],
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/add.png',
                width: MediaQuery.of(context).size.width * 0.06,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/icons/more.png',
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
