import 'package:flutter/material.dart';
import './detail.dart';
import 'package:dio/dio.dart';

// void getHttp() async {
//   try {
//     var response = await Dio().get('http://www.google.com');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }
class List extends StatefulWidget {
  final String mt;

  const List({Key? key, required this.mt}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListStates();
  }
}

class _ListStates extends State<List> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext cxt, int i) {
        // 提供事件触发
        return GestureDetector(
          onTap: () {
            // 路由跳转
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx) {
              return const MovieDetail(id: "123",title: "superman");
            }));
          },
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.black12))),
            child: Row(
              children: <Widget>[
                Image.network(
                    "https://img2.woyaogexing.com/2020/06/19/02d268db09ff4e8e9608fd64adbbeed8!400x400.jpeg",
                    width: 130,
                    height: 180,
                    fit: BoxFit.cover),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("电影名称${widget.mt}"),
                      Text("上映年份${widget.mt}"),
                      Text("电影类型${widget.mt}"),
                      Text("豆瓣评分${widget.mt}"),
                      Text("主要演员${widget.mt}"),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
