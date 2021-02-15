import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memomemo/edit.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
        ...LoadMemo()
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context)=>EditPage())
          );
        },

        tooltip: '메를 추가하려면 추가하세',
        label:Text('메모추가'),
        icon: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

List<Widget>LoadMemo() {
  List<Widget> memoList = [];
  memoList.add(Container(color: Colors.purpleAccent, height: 100,));
  memoList.add(Container(color: Colors.redAccent,height: 100,));
  return memoList;


}
