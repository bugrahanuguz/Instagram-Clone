import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Horizontal_Listview extends StatelessWidget {
  final String? icon_path;
  final String? icon_name;
  final Widget? icon_myself;
  final double? size;
  const Horizontal_Listview(
      {super.key, this.icon_path, this.icon_name, this.icon_myself, this.size});

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
                height: size == null
                    ? MediaQuery.of(context).size.height * 0.07
                    : MediaQuery.of(context).size.height * size!,
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
          if (icon_name != null)
            Text(
              icon_name!,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
        ],
      ),
    );
  }
}
