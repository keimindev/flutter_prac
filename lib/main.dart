import 'package:flutter/material.dart';

//void는 텅빈공간이라는 뜻
//메인 함수가 앱의 시작점이다
//widget is argument. you should put 'widget' for runapp
//class name -> 대문자 , function name -> 소문자
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     //반드시 arguement를 가져야함
    return MaterialApp(
     title: "Charactor Card",
     theme: ThemeData(
      primarySwatch: Colors.blue
     ),
      // 정상적으로 실행되었을 때 제일 먼저 보여주는 곳이 home
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // web 화면구성을 위해 도와주는 도화지같은 요소 이거 필수임
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      //padding은 세로축상으로는 제약이 없다. 이건 세로축 중앙
      //가로축 정중앙으로 보내려면 center를 쓴다
      body:  Center(
        child: Column(
          //세로축으로 정렬할 때
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello'),
            Text('Min'),
            Text('Rob'),
          ],
          ),
      )
    );
  }
}