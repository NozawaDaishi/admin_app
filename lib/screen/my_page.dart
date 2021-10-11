import 'package:flutter/material.dart';

//MyPageタブの画面表示
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      color: Colors.green[200],
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                          'P',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 75,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
                thickness: 0.8,
                endIndent: 5.0,
              ),
              Text('NAME',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 3.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Pean',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text('Career',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('1.9 year',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Text('Today I learned',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 5,),
                Text('Flutter',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
              ),
              Row(children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 5,),
                Text('Dart',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
              ),
              Row(children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 5,),
                Text('Android Studio',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
