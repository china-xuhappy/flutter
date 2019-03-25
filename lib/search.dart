import 'package:flutter/material.dart';


class Search extends StatefulWidget{
  @override
  SearchState createState() => new SearchState();
}

class SearchState extends State<Search>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45,
                  margin: EdgeInsets.only(left: 50,right: 10),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1,color: Colors.green))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                          ),
                          onChanged: (String text){},
                          decoration: InputDecoration(
                            hintText: "搜索",
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mic,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Text(
                  "搜索指定文章",
                  style: TextStyle(fontSize: 16,color: Color(0xffb5b5b5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "小程序",

                  ),
                  Text(
                    "小程序",

                  ),
                  Text(
                    "小程序",

                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "小程序",

                  ),
                  Text(
                    "小程序",

                  ),
                  Text(
                    "小程序",

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}