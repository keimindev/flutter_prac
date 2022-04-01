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
     title: "BBANTO",
      // 정상적으로 실행되었을 때 제일 먼저 보여주는 곳이 home
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // web 화면구성을 위해 도와주는 도화지같은 요소 이거 필수임
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        elevation: 0.0,
      ),
      //padding은 세로축상으로는 제약이 없다. 이건 세로축 중앙
      //가로축 정중앙으로 보내려면 center를 쓴다
      body:  Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/reactjs.png'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('Name',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            )
            ),
            //height , width 간격을 만들수 있게 해준다. 높이를 주면
            SizedBox(
              height: 10.0,
            ),
             Text('BBANTO', 
             style: TextStyle(
               color: Colors.white,
               letterSpacing: 2.0,
               fontSize: 28.0,
               fontWeight: FontWeight.bold,
               ),
               ),
                  SizedBox(
              height: 30.0,
            ),
            Text('BBANTO POWER LEVEL',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            )
            ),//height , width 간격을 만들수 있게 해준다. 높이를 주면
            SizedBox(
              height: 10.0,
            ),
             Text('14', 
             style: TextStyle(
               color: Colors.white,
               letterSpacing: 2.0,
               fontSize: 28.0,
               fontWeight: FontWeight.bold,
               ),
               ),
              SizedBox(
              height: 30.0,
              ),
               Row(
                 children: <Widget>[
                   Icon(Icons.check_circle_outline),
                   SizedBox(
                     width: 10.0,
                   ),
                   Text('using lightsaber', 
                   style: TextStyle(
                     fontSize: 16.0,
                     letterSpacing: 1.0,

                   ),),
                 ],
               ),
                  Row(
                 children: <Widget>[
                   Icon(Icons.check_circle_outline),
                   SizedBox(
                     width: 10.0,
                   ),
                   Text('fase hero tattoo', 
                   style: TextStyle(
                     fontSize: 16.0,
                     letterSpacing: 1.0,

                   ),),
                 ],
               ),
                              Row(
                 children: <Widget>[
                   Icon(Icons.check_circle_outline),
                   SizedBox(
                     width: 10.0,
                   ),
                   Text('fire flames', 
                   style: TextStyle(
                     fontSize: 16.0,
                     letterSpacing: 1.0,

                   ),),
                 ],
               ),
               Center(
                 child: CircleAvatar(
                   backgroundImage: AssetImage('assets/redux.png'),
                   radius: 40.0,
                   backgroundColor: Colors.amber[800],
                   ),
                   ),
          ],
        )
      )
    );
  }
}