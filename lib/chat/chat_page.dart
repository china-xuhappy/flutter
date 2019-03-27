import 'package:flutter/material.dart';
import './message_data.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/cupertino.dart';

var flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
//class ChatPage extends StatelessWidget{
//  final MessageData product;
//
//  ChatPage({Key key, @required this.product}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//        appBar: AppBar(title: new Text(product.title),),
//        body:Center(
//          child:  Container(
//            child: Row(
//              children: <Widget>[
//                new Text(product.subTitle),
//              ],
//            ),
//          ),
//        )
//    );
//  }
//}


class ChatPage extends StatefulWidget{
  final MessageData product;

  ChatPage({Key key, @required this.product}) : super(key: key);

  @override
  ChatPageState createState()=> new ChatPageState();


}

class ChatPageState extends State<ChatPage>{
  TextEditingController _controller = new TextEditingController();

  final WebSocketChannel channel = new IOWebSocketChannel.connect('ws://123.56.28.90:8080/websocket/1');

  List<String> messages = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    var initializationSettingsAndroid =
    new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidRecieveLocalNotification);
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.product.title),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Form(
              child: new TextFormField(
                controller: _controller,
                decoration: new InputDecoration(labelText: 'Send a message'),
              ),
            ),
            Expanded(
              child: new StreamBuilder(
                  stream:channel.stream,
                  builder: (context, snapshot) {
                    var data = snapshot.data;

                    if(data != null){
                      messages.add(data);
                      _showNotification(widget.product.title,data);
                      return new Container(
                        width: 400,
                        height: 500,
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: ListView.builder(
                            itemCount: messages.length,
                            itemBuilder: (BuildContext context , int index){
                              return new Text(messages[index]);
                            }),
                      );
                    }
                    return new Text("暂无消息");
                  }),
            )

          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send message',
        child: new Icon(Icons.send),
      ),
    );
  }
//      body: Container(
//        child: Column(
//          children: <Widget>[
//            new StreamBuilder(
//                stream: channel.stream,
//                builder: (context, snapshot){
//                  print(snapshot);
//                  messages.add(snapshot.data);
//                  return new Padding(
//                    padding: const EdgeInsets.symmetric(vertical: 24.0),
//                    child: new Text(snapshot.hasData?'${snapshot.data}':''),
//                  );
//                }),
//            Container(
//              child: ListView.builder(
//                  itemCount: messages.length,
//                  itemBuilder: (BuildContext context , int index){
//                return new Text(messages[index]);
//              })
//            ),
//            new Padding(
//                padding: const EdgeInsets.all(20.0),
//                child: new Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Stack(
//                      children: <Widget>[
//                        new Container(
//                            alignment: Alignment.centerLeft,
//                            height: 100,
//                            child: new Form(
//                              child: new TextFormField(
//                                controller: _controller,
//                                decoration: new InputDecoration(labelText: 'Send a message'),
//                              ),
//                            )
//                        ),
//                        Container(
//                          alignment: Alignment.centerRight,
//                          margin: EdgeInsets.only(right: 0,bottom: 0),
//                          child: new FloatingActionButton(
//                            onPressed: _sendMessage,
//                            tooltip: 'Send message',
//                            child: new Icon(Icons.send),
//                          ),
//                        )
//                      ],
//                    )
//                  ],
//                ),
//              ),
//          ],
//        )
//      )
  void _sendMessage(){
    if (_controller.text.isNotEmpty){
      channel.sink.add(_controller.text);
    }
  }
  @override
  void dispose(){
    channel.sink.close();
    super.dispose();
  }

  Future _showNotification(String title ,String data) async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High);
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, title, data, platformChannelSpecifics,
        payload: 'item x');
  }

  Future onDidRecieveLocalNotification(int id, String title, String body, String payload) async {
    // 展示通知内容的 dialog.
    showDialog(
      context: context,
      builder: (BuildContext context) => new CupertinoAlertDialog(
        title: new Text(title),
        content: new Text(body),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: new Text('Ok'),
            onPressed: () async {
              Navigator.of(context, rootNavigator: true).pop();
              await Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new SecondScreen(payload),
                ),
              );
            },
          )
        ],
      ),
    );
  }
  Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
    await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SecondScreen(payload)),
    );
  }

}


class SecondScreen extends StatefulWidget {
  final String payload;
  SecondScreen(this.payload);
  @override
  State<StatefulWidget> createState() => new SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  String _payload;
  @override
  void initState() {
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen with payload: " + _payload),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('Go back!'),
        ),
      ),
    );
  }
}
