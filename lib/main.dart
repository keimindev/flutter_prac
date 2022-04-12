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
      debugShowCheckedModeBanner: false,
      title: "Snack Bar",
      // 정상적으로 실행되었을 때 제일 먼저 보여주는 곳이 home
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack bar!'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: Text(
                  'Show me',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                    content: Text('Hellow'),
                  ));
                },
              ),
            );
          },
        ));
  }
}
