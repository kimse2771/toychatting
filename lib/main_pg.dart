import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isLoginButton = false;


  _login(){

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 200,
              child: Text(
                  "bubble chat"),
            ),

            Positioned(
              top: 400,
              left: 150,

              child: !isLoginButton?
              OutlinedButton(
                child: Text("로그인하기"),
                onPressed: (){
                  setState(() {
                    isLoginButton = true;
                  });
                  },
              ) : OutlinedButton(
                  onPressed: (){
                    setState(() {
                      isLoginButton = false;
                    });
                    },
                  child: Text("버튼 바꾸기!"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
