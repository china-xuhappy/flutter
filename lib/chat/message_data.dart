class MessageData{
  String avatar;
  String title;
  String subTitle;
  DateTime time;

  MessageType type;
  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

enum MessageType{SYSTEM,PUBLIC,CHAT,GROUP}

List<MessageData> messageData = [
  new MessageData("https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2975925263,2462653003&fm=58&bpow=512&bpoh=910", "大耳朵图图", "徐开心图图想你了", new DateTime.now(), MessageType.CHAT),
  new MessageData("https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=d3496daba3c27d1eb12b33967abcc60b/024f78f0f736afc37e47e06ab419ebc4b7451271.jpg", "喜洋洋与灰太狼", "徐开心喜洋洋想你了", new DateTime.now(), MessageType.CHAT),
];