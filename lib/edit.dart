import 'package:flutter/material.dart';
import 'package:memomemo/database/db.dart';

import 'database/memo.dart';
class EditPage extends StatelessWidget {
  String title='';
  String text='';

  @override
  Widget build(BuildContext context) {
    //앱바와 텍스트뷰 
    return Scaffold(//scaffold appbar 를 구글에 ㄲ
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.delete),
              onPressed: (){},) ,
          IconButton(icon: const Icon(Icons.save),
              onPressed: saveDB,
          )
        ],
      ),
      body: Padding(//바디 전체를 패딩으로 묶
        padding: EdgeInsets.all(20),
          child: Column(//child
        children: <Widget>[
          TextField(
            //변경된 사항을 타이틀에 저장 파라미터 타이틀로 저장 맨위부분 title 에 저
            onChanged: (String title){this.title= title;},
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            // obscureText: true,
            decoration: InputDecoration(
              //border: OutlineInputBorder(),
              hintText: '매모의 제목을 적어주세',
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            onChanged: (String text){this.text= text;},
            maxLines: null,
            // obscureText: true,//패스워드
            decoration: InputDecoration(
              //border: OutlineInputBorder(),
              hintText: '매모의 내용을 적어주세',
            ),
          ),
        ],
      ),
      ));
  }

  Future<void> saveDB() async {
    DBHelper sd =DBHelper();
    var fido = Memo(
      id:3,
      title: this.title,
      text: this.text,
      createTime: DateTime.now().toString(),
      editTime:DateTime.now().toString(),
    );
    await sd.insertMemo(fido);
    print(await sd.memos());
  }
}
