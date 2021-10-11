import 'package:flutter/material.dart';

//Mgt.タブの画面表示
class PostList extends StatelessWidget {
  Expanded tile(
      String title,
      String subtitle,
      IconData icon
      ) {
    return Expanded(
      flex: 1,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: ClipOval(
          child: Container(
            color: Colors.grey[350],
            width: 50,
            height: 50,
            child: Icon(icon),
          ),
        ),
      ),
    );
  }

  @override

  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                tile('Posts', '20Posts', Icons.storage),
                tile('All Types', '', Icons.style),
              ],
            ),
            _CardList(),
          ],
        ),
      ),
    );
  }
}

class _CardList extends StatelessWidget {

  Card card(
      String icon_txt,
      String name,
      String subtitle,
      Color main_color,
      Color text_color,
      Color sub_color,
      Color btn_txt_color,
      String message,
      String btn_txt,
      String txt
      ) {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Icon(
                    Icons.trip_origin,
                    size: 15,
                    color: main_color
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 0),
                child: Text(
                    message,
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
                      color: main_color,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  btn_txt,
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    'Decline',
                    style: TextStyle(
                      color: text_color,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(sub_color),
                  ),
                  child: Text(
                    txt,
                    style: TextStyle(
                      color: btn_txt_color,
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
    for (int i = 0; i < 20; i++) {
      if(i.isEven) {
        cardList.add(
            card(
                'P',
                'Pean',
                '2 min ago',
                Colors.green[200]!,
                Colors.blueAccent,
                Colors.green[100]!,
                Colors.green[300]!,
                'Weak reason. No action required.',
                'Report Details',
                'Keep'
            )
        );
      }else{
        cardList.add(
            card(
              'N',
              'Namege Tema',
              '2 min ago',
              Colors.orange[200]!,
              Colors.orange,
              Colors.blue[100]!,
              Colors.blue[300]!,
              'Not recommended for publication',
              'Pending Reason',
              'Publish'
            )
        );
      }
    }
    return cardList;
  }
}
