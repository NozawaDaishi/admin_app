import 'package:flutter/material.dart';

//Bookmarkタブの画面表示
class Bookmark extends StatelessWidget {
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
                    title: Text('Bookmarks'),
                    subtitle: Text('10 Bookmarks'),
                    leading: ClipOval(
                      child: Container(
                        color: Colors.grey[350],
                        width: 50,
                        height: 50,
                        child: Icon(Icons.bookmarks),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _BookmarkList(),
          ],
        ),
      ),
    );
  }
}
class _BookmarkList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: buildCardList(),
      ),
    );
  }
  List<Widget> buildCardList() {
    final cardList = <Widget>[];
    for (int i = 0; i < 10; i++) {
      cardList.add(_PostCard());
    }
    return cardList;
  }
}

class _PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            title: Text('Namage Tema'),
            subtitle: Text('2 min ago'),
            leading: ClipOval(
              child: Container(
                color: Colors.orange[200],
                width: 50,
                height: 50,
                child: Center(
                  child: Text(
                    'N',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Icon(
                    Icons.trip_origin,
                    size: 15,
                    color: Colors.orange[200]
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 0),
                child: Text(
                    'Not recommended for publication',
                    style: TextStyle(
                      fontSize: 13,
                    )
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.orange[200]!,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  'Pending Reason',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    'Decline',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 10),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[100]!),
                  ),
                  child: Text(
                    'Publish',
                    style: TextStyle(
                      color: Colors.blue[300],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}