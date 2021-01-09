import 'dart:math';

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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // 左右のダイスの目の初期化
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void shakeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  shakeDice();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  shakeDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
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
