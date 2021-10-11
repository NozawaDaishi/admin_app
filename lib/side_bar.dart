import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screen/bookmark.dart';
import 'screen/my_page.dart';
import 'screen/post_list.dart';
import 'screen/user_list.dart';

final selectedProvider = StateProvider((ref) => 0);

//MyAppクラスに呼び出されるクラス
class SideBarNavigation extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _selectedIndex = watch(selectedProvider).state;

    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: NavigationRail(
                selectedIndex: _selectedIndex,
                onDestinationSelected: (index) {
                  context.read(selectedProvider).state = index;
                },
                labelType: NavigationRailLabelType.selected,
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.thumbs_up_down_outlined),
                    selectedIcon: Icon(Icons.thumbs_up_down),
                    label: Text('Mgt.'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.group),
                    selectedIcon: Icon(Icons.group),
                    label: Text('User'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.face),
                    selectedIcon: Icon(Icons.face),
                    label: Text('My Page'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.bookmark),
                    selectedIcon: Icon(Icons.bookmark),
                    label: Text('Bookmark'),
                  ),
                ],
              ),
            ),
          ),
          VerticalDivider(thickness: 1, width: 1),

          // 画面の切り替え

          // 即時関数
          // (() {
          //   if (_selectedIndex == 0) {
          //     return PostList();
          //   } else if(_selectedIndex == 1) {
          //     return UserList();
          //   } else if(_selectedIndex == 2) {
          //     return MyPage();
          //   } else {
          //     return Bookmark();
          //   }
          // })(),

          // 三項演算子
          (_selectedIndex == 0)
              ? PostList()
              : (_selectedIndex == 1)
              ? UserList()
              : (_selectedIndex == 2)
              ? MyPage()
              : Bookmark(),
        ],
      ),
    );
  }
}