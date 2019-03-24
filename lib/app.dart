import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainState();
  }
}

class MainState extends State<App> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: ((index) {}),
          items: [
            new BottomNavigationBarItem(
                title: new Text(
                  "微信",
                  style: TextStyle(
                    color: _currentIndex == 0
                        ? new Color(0xFF46c01b)
                        : new Color(0xff999999),
                  ),
                ),
                icon: _currentIndex == 0
                    ? Image.asset(
                        "images/weixin_pressed.png",
                        width: 32,
                        height: 28,
                      )
                    : Image.asset(
                        "images/weixin_normal.png",
                        width: 32,
                        height: 28,
                      )),
            new BottomNavigationBarItem(
                title: new Text(
                  "通讯录",
                  style: TextStyle(
                    color: _currentIndex == 1
                        ? new Color(0xFF46c01b)
                        : new Color(0xff999999),
                  ),
                ),
                icon: _currentIndex == 1
                    ? Image.asset(
                        "images/contact_list_pressed.png",
                        width: 32,
                        height: 28,
                      )
                    : Image.asset(
                        "images/contact_list_normal.png",
                        width: 32,
                        height: 28,
                      )),
            new BottomNavigationBarItem(
                title: new Text(
                  "发现",
                  style: TextStyle(
                    color: _currentIndex == 2
                        ? new Color(0xFF46c01b)
                        : new Color(0xff999999),
                  ),
                ),
                icon: _currentIndex == 2
                    ? Image.asset(
                        "images/find_pressed.png",
                        width: 32,
                        height: 28,
                      )
                    : Image.asset(
                        "images/find_normal.png",
                        width: 32,
                        height: 28,
                      )),
            new BottomNavigationBarItem(
                title: new Text(
                  "我的",
                  style: TextStyle(
                    color: _currentIndex == 3
                        ? new Color(0xFF46c01b)
                        : new Color(0xff999999),
                  ),
                ),
                icon: _currentIndex == 3
                    ? Image.asset(
                        "images/profile_pressed.png",
                        width: 32,
                        height: 28,
                      )
                    : Image.asset(
                        "images/profile_normal.png",
                        width: 32,
                        height: 28,
                      ))
          ]),
    );
  }
}
