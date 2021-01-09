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
        // 中身。Centerで中央揃え
        body: Center(
          child: Container(
            child: Row(),
            // 背景を指定
            color: Colors.red,
            width: 1000,
            height: 1000,
          ),
        ),
      ),
    );
  }
}
