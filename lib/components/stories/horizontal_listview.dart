import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Horizontal_Listview extends StatelessWidget {
  final String? icon_path;
  final String? icon_name;
  final Widget? icon_myself;
  const Horizontal_Listview(
      {super.key, this.icon_path, required this.icon_name, this.icon_myself});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7, right: 7, top: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.red, width: 3)),
            child: ClipOval(
              child: Container(
                height: 60,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
                child: icon_path != null
                    ? Image.asset(
                        icon_path!,
                        scale: 1.5,
                      )
                    : icon_myself,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            icon_name!,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
