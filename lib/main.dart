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
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // web 화면구성을 위해 도와주는 도화지같은 요소 이거 필수임
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/moon.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/redux.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('Moon'),
              accountEmail: Text('moon@gmail.com'),
              onDetailsPressed: () {
                print('open drawer');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text("Home"),
              //gesture
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text("Setting"),
              //gesture
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text("Q&A"),
              //gesture
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
