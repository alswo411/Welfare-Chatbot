import 'package:flutter/material.dart';
import 'package:untitled1/const/const.dart';
import 'package:untitled1/screen/sign.dart';
import 'package:untitled1/screen/login.dart';

//int type를 받습니다. 0은 성공, 1은 실패입니다.
class new_button extends StatelessWidget {
  final int type;

  new_button(this.type);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (type == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => sign(),
            ),
          );
        }
      },
      child: Container(
        width: 179,
        height: 64,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ui_colors[3], ui_colors[4]],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(80)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: SizedBox(
                width: 600,
              ),
            ),
            Text(
              style: TextStyle(
                color: font_colors[0],
                fontSize: 16,
              ),
              login_success_button[type],
              textAlign: TextAlign.center,
            ),
            Flexible(
              child: SizedBox(
                width: 600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//지금 보이는 화면은 성공화면만 보이지만, 로그인이 성공했는지 확인 과정 후
//변수 설정으로 바꾸면 실패 화면도 할 수 있습니다.

class success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color[0],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 260,
              ),
              Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      width: 80,
                    ),
                  ),
                  Container(
                    width: 325,
                    height: 429,
                    decoration: BoxDecoration(
                      color: ui_colors[2],
                      borderRadius: BorderRadius.circular(59),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/success_logo.png'),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          login_success_text[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: font_colors[0], fontSize: 24),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          login_success_text[1],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: font_colors[2],
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        new_button(0), //0은 성공, 1은 실패.
                      ],
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 80,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
