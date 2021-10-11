import 'package:flutter/material.dart';

//Userタブの画面表示
class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ListTile(
                    title: Text('Users'),
                    subtitle: Text('2 Users'),
                    leading: ClipOval(
                      child: Container(
                        color: Colors.grey[350],
                        width: 50,
                        height: 50,
                        child: Icon(Icons.people_alt),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _UserCardList(),
          ],
        ),
      ),
    );
  }
}

class _UserCardList extends StatelessWidget {
  Card card(String icon_txt, String name, String subtitle, Color main_color) {
    return Card(
      margin: EdgeInsets.only(
        top: 0,
        bottom: 13,
        left: 10,
        right: 10,
      ),
      elevation: 3,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(name),
            subtitle: Text(subtitle),
            leading: ClipOval(
              child: Container(
                color: main_color,
                width: 50,
                height: 50,
                child: Center(
                  child: Text(
                    icon_txt,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: buildUserList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> buildUserList() {
    final cardList = <Widget>[];
    cardList.add(card('P', 'Pean', '2 min ago', Colors.green[200]!));
    cardList.add(card('N', 'Namega Tema', '2 min ago', Colors.orange[200]!));
    return cardList;
  }
}