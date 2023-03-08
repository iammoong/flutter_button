import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}
//StatefulWidget은 createState를 재정의해서 호출한다.
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

// 언더스코어(_)의 뜻 : 자바의 프라이빗과 동일
class _MyApp extends State<MyApp>{
  var switchValue = false;
  String test = 'hello'; // 버튼에 들어갈 텍스트 입력
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              child : Text('$test',
                style: TextStyle(
                  color: Colors.white // 글자색을 흰색으로 만들어준다
                )
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_color),
              ),
              onPressed: (){
                if(_color == Colors.blue){
                  setState(() { // setState() 함수를 적용
                    test = 'flutter';
                    _color = Colors.amber;
                  });
                } else { //
                  setState(() {
                    test = 'flutter';
                    _color = Colors.blue;
                  });
                }
              },
            ),
          ),
        ),
    );
  }
}


