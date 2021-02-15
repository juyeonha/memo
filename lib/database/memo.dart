//클래스에 정의하여 데이터를 사용한다.
// 데이터를 SQLite로 저장할 때는 이 클래슬 그대로 인자로 넘겨주면 파일로 저장된다.

import 'package:flutter/material.dart';

class Memo{
  final int id;
  final String title;
  final String text;
  final String createTime;
  final String editTime;


  Memo({this.id, this.title, this.text, this.createTime, this.editTime});

  Map<String, dynamic>toMap(){
    return{
      'id':id,
      'title':title,
      'text':text,
      'createTime':createTime,
      'editTime':editTime,
    };
  }
  //각 memeo 정보를 보기 쉽도록 print 문을 사용해서 toString 을 구현하시오
  //낯설다 이구문 ㅎㅎㅎㅎ 아니 그리고 단축키 너무어려
  @override
  String toString(){
    return 'Memo{id:$id, title:$title,text:$text, createTime:$createTime,editTime:$editTime}';
  }


}