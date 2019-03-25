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

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
        child: Row(
            children: <Widget>[
              imagePath != null
                  ? Image.asset(imagePath)
                  : SizedBox(
                      width: 32,
                      height: 32,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
        ),

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Center(
        child: Padding(
            padding: new EdgeInsets.only(top: 80),
          child: Column(
            children: <Widget>[
              Image.network(
                "https://ws2.sinaimg.cn/large/9150e4e5ly1ffbfs6gnlgj204g044746.jpg",
                width: 200,
                height: 200,
              ),
              Image.network(
                "https://ws1.sinaimg.cn/large/9150e4e5ly1fumazpa7hxg205i058mx6.gif",
                width: 200,
                height: 200,
              ),
              new Text("你暂时没有信息")
            ],
          ),
        )
      ),
      appBar: new AppBar(
        title: new Text("微信"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,"search");
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20),
            child: GestureDetector(
              onTap: () {
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500, 100, 0, 0),
                    items: <PopupMenuEntry>[
                      _popupMenuItem("添加朋友", icon: Icons.group_add),
                      _popupMenuItem("扫一扫", icon: Icons.filter_center_focus),
                      _popupMenuItem("收付款", icon: Icons.crop_free),
                    ]);
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
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
