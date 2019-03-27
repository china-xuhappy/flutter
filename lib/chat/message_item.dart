import 'package:flutter/material.dart';
import './message_data.dart';
import '../common/touch_callback.dart';
import 'package:date_format/date_format.dart';
import './chat_page.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;

  MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      height: 70,
      child: TouchCallBack(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 13, right: 13),
                child: Image.network(
                  message.avatar,
                  width: 50,
                  height: 50,
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message.title,
                    style: TextStyle(fontSize: 16, color: Color(0xDD353535)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                  ),
                  Text(
                    message.subTitle,
                    style: TextStyle(fontSize: 14, color: Color(0xFFa9a9a9)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              )),
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: const EdgeInsets.only(right: 12, top: 12),
                child: Text(
                  formatDate(message.time, [HH, ":", nn, ":", ss]).toString(),
                  style: TextStyle(fontSize: 14, color: Color(0xFFa9a9a9)),
                ),
              )
            ],
          ),
          onPressed: () {
            print("点击了");


            Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ChatPage(
                              product: message,
                            )));
          }),
    );
  }
}
