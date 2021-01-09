import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // タイトル
      title: 'Dicee',
      // デバッグの文字を削除
      debugShowCheckedModeBanner: false,
      // テーマ
      theme: ThemeData(
        // 全体のパーツを白くするためにダークテーマを採用
        brightness: Brightness.dark,
      ),
      // ページ全体のレイアウト
      home: Scaffold(
        appBar: AppBar(
          // タイトル
          title: Text('Dicee'),
          // appBarのバックグラウンドを赤に変更
          backgroundColor: Colors.red,
          // ヘッダーの影を削除
          elevation: 0.0,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 3;
    return Center(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                  Expanded(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
        // 背景を指定
        color: Colors.red,
        width: 1000,
        height: 1000,
      ),
    );
  }
}
