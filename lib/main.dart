import 'package:flutter/material.dart';
import './index/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '账单管理',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('账单管理'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: const <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('小过超市'),
                  accountEmail: Text('1234567@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F09%2F20210709142454_dc8dc.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1662018396&t=5e3027a8f0643c105e03e9d46bfd9edc'),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F09%2F20210709142454_dc8dc.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1662018396&t=5e3027a8f0643c105e03e9d46bfd9edc'))),
                ),
                ListTile(
                  title: Text("用户"),
                  trailing: Icon(Icons.feedback),
                ),
                // 分割线
                Divider(),
                ListTile(
                  title: Text("设置"),
                  trailing: Icon(Icons.settings),
                ),
                Divider(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(color: Colors.black),
            height: 50,
            child: const TabBar(
              labelStyle: TextStyle(height: 1,fontSize: 10,textBaseline: TextBaseline.alphabetic),
              tabs: <Widget>[
              Tab(
                text: '首页',
                icon: Icon(Icons.movie_filter),
              ),
              Tab(
                text: '页',
                icon: Icon(Icons.movie_creation),
              ),
              Tab(
                text: '首',
                icon: Icon(Icons.movie_creation_rounded),
              ),
            ],
          ),),
          body: const TabBarView(children: <Widget>[
            List(mt: 'index'),
            List(mt: 'pubilc'),
            List(mt: 'top250'),
          ],),
        ));
  }
}
