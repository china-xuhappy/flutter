import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading.dart';
import 'app.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "WeChat",
  theme: mDefaultTheme,
  routes: <String,WidgetBuilder>{
    "app":(BuildContext context) => new App(),
    "/friends":(_) => new WebviewScaffold(
        url: "https//weixin.qq.com/",
      appBar: new AppBar(
        title: new Text("微信朋友圈"),
      ),
      withZoom: true,
      withLocalStorage: true,
    )
  },
  home: new LoadingPage(),
));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xff393a3f)
);
//
////void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("文本控件"),
//      ),
//      body: new Column(
//        children: <Widget>[
//          new Text(
//            "红色+删除线+26号",
//            style: new TextStyle(
//                color: const Color(0xffff0000),
//                decoration: TextDecoration.lineThrough,
//                decorationColor: const Color(0xff000000),
//                fontSize: 26),
//          ),
//          new Image.network(
//            'http://xu-happy.oss-cn-beijing.aliyuncs.com/official/head.jpg',
//            fit: BoxFit.fitWidth,
//            scale: 2.0,
//            width: 100,
//          )
//        ],
//      ),
//    );
//  }
//}
//
//class ContainerDome extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Center(
//      child: new Container(
//        width: 400,
//        height: 400,
//        decoration: new BoxDecoration(
//            color: Colors.amber,
//            border: new Border.all(color: const Color(0xfff00000), width: 8),
//            borderRadius: new BorderRadius.all(Radius.circular(50))),
//        child: new Text(
//          "Happy",
//          textAlign: TextAlign.center,
//        ),
//      ),
//    );
//  }
//}
//
//class ListViewDome extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: "ListView Dome",
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("ListView"),
//        ),
//        body: new ListView(
//          children: <Widget>[
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.ac_unit),
//              title: new Text("acunit"),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class ListViewDome2 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: "ListView Dome 2",
//      home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text("List View Dome 2"),
//            backgroundColor: Colors.amber,
//            actions: <Widget>[
//              IconButton(
//                icon: Icon(Icons.playlist_play),
//                tooltip: 'Air it',
//                onPressed: () {
//                  print("filled background");
//                },
//              ),
//              IconButton(
//                icon: Icon(Icons.playlist_add),
//                tooltip: 'Restitch it',
//              ),
//              IconButton(
//                icon: Icon(Icons.playlist_add_check),
//                tooltip: 'Repair it',
//              ),
//            ],
//          ),
//          body: new Container(
//            height: 200,
//            margin: new EdgeInsets.symmetric(vertical: 20),
//            child: new ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
//                new Container(
//                  width: 160,
//                  color: Colors.amber,
//                ),
//                new Container(
//                  width: 160,
//                  color: Colors.black,
//                ),
//                new Container(
//                  width: 160,
//                  color: Colors.teal,
//                ),
//                new Container(
//                  width: 160,
//                  color: Colors.deepOrange,
//                ),
//                new Container(
//                  width: 160,
//                  color: Colors.greenAccent,
//                ),
//                new Container(
//                  width: 160,
//                  color: Colors.green,
//                )
//              ],
//            ),
//          )),
//    );
//  }
//}
//
//class GridViewDome extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: "GridView Dome",
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("GRIDVIEW Dome"),
//        ),
//        body: new GridView.count(
//          primary: false,
//          padding: const EdgeInsets.all(20),
//          crossAxisSpacing: 30,
//          crossAxisCount: 2,
//          children: <Widget>[
//            const Text("112"),
//            const Text("112"),
//            const Text("112"),
//            const Text("112"),
//            const Text("112"),
//            const Text("112"),
//            const Text("112")
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class DismissibleDome extends StatelessWidget {
//  List<String> items = List.generate(30, (i) => "列表项${i + 1}");
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Dismissible Dome"),
//      ),
//      body: new ListView.builder(
//          itemCount: items.length,
//          itemBuilder: (context, index) {
//            final item = items[index];
//            return new Dismissible(
//                key: new Key(item),
//                onDismissed: (direction) {
//                  items.removeAt(index);
//                  Scaffold.of(context).showSnackBar(
//                      new SnackBar(content: new Text("$item 被删除")));
//                },
//                child: new ListTile(
//                  title: new Text('$item'),
//                ));
//          }),
//    );
//  }
//}
//
//class Product {
//  final String title;
//  final String desc;
//
//  Product(this.title, this.desc);
//}
//
//class ProductList extends StatelessWidget {
//  List<Product> products;
//
//  ProductList({Key key, @required this.products}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: new Text("商品列表"),
//      ),
//      body: new ListView.builder(
//          itemCount: products.length,
//          itemBuilder: (context, index) {
//            var product = products[index];
//            return new ListTile(
//              title: new Text(product.title),
//              onTap: () {
//                Navigator.push(
//                    context,
//                    new MaterialPageRoute(
//                        builder: (context) => new ProductDeatil(
//                              product: product,
//                            )));
//              },
//            );
//          }),
//    );
//  }
//}
//
//class ProductDeatil extends StatelessWidget {
//  final Product product;
//
//  ProductDeatil({Key key, @required this.product}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(product.title),
//      ),
//      body: new Center(
//        child: new Text(product.desc),
//      ),
//    );
//  }
//}
//
//void main() {
//  runApp(MaterialApp(
//    title: "XuHappy",
//    home: new ProductList(
//      products: new List.generate(20, (i) => new Product("商品$i", "这是第$i个商品")),
//    ),
//  ));
//}
