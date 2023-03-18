import 'package:flutter/material.dart';
import 'chat_searh_list.dart';

class ChatSearchWidget extends StatelessWidget {
  const ChatSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: SizedBox(
            height: 40,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white12,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatSearchList()));
                    //context.read<ChatModelView>().changeSearchView();
                  },
                  style: const TextStyle(color: Colors.white70),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white70, fontSize: 18),
                    contentPadding: EdgeInsets.only(bottom: 10),

                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Opacity(
                        opacity: 0.7,
                        child: Image.asset(
                          "assets/icons/search.png",
                        ),
                      ),
                    ),

                    // contentPadding:
                    //     EdgeInsets.only(left: 5),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
