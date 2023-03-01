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
  @override
  Widget build(BuildContext context) {
    var switchValue = false;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: Switch(
                value: switchValue,
                onChanged: (value) {
                  // 플러터에서 변숫값이 바뀌면 이 사실을 앱에 알려 화면을 갱신해 주는 함수
                  setState(() {
                    print(value);
                    switchValue = value;
                  });
                }),
          ),
        ));
  }
}


