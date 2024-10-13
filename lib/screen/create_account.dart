import 'package:flutter/material.dart';
import 'package:untitled1/const/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/screen/login.dart';
import 'package:flutter/gestures.dart';
import 'package:untitled1/screen/privacy_policy.dart';

class infield extends StatelessWidget {
  final int type;
  infield(this.type);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icons[type],
          contentPadding: EdgeInsets.all(20),
          hintText: sign_up_field[type],
          hintStyle: TextStyle(color: font_colors[5]),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(59),
            ),
          ),
          fillColor: ui_colors[2],
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(59)),
            borderSide: BorderSide(color: ui_colors[2]),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ui_colors[2],
            ),
            borderRadius: BorderRadius.all(Radius.circular(59)),
          ),
        ),
        style: TextStyle(
          color: font_colors[5],
        ),
        obscureText: type == 5,
      ),
    );
  }
}

class NewCheckbox extends StatefulWidget {
  @override
  _NewCheckboxState createState() => _NewCheckboxState();
}

class _NewCheckboxState extends State<NewCheckbox> {
  // 올바른 State 클래스 연결
  // 체크박스 상태를 저장할 변수
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            // 체크박스 위젯
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked, // 체크박스의 현재 상태
                  onChanged: (bool? value) {
                    setState(
                      () {
                        _isChecked = value ?? false; // 새로운 상태 설정
                      },
                    );
                  },
                ),
                // 체크박스 옆에 표시할 텍스트
                Text(
                  '본인은 위 동의 내용을 이해하였으며 \n직접 한 줄씩 읽고 이해하였음을 확인하며, 이에 동의합니다.',
                  style: TextStyle(color: font_colors[0]),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(
                  width: 28,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 382,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: _isChecked
                        ? LinearGradient(
                            colors: [ui_colors[3], ui_colors[4]],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                        : null,
                    color: _isChecked ? ui_colors[4] : ui_colors[2],
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                  ),
                  child: ElevatedButton(
                    onPressed: _isChecked
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      disabledBackgroundColor: ui_colors[2],
                      disabledForegroundColor: ui_colors[2],
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          style: TextStyle(
                            color: font_colors[0],
                            fontSize: 16,
                          ),
                          sign_up_field[7],
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color[0],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF000000),
                  Color(0xFF5C20B5),
                  Color(0xFF8D39DE),
                ],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                stops: [0.4, 0.8, 1.0],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        //페이지 이동하는 함수
                        Navigator.pop(
                          context,
                        );
                      },
                      child: Image.asset('assets/left_button.png'),
                    )
                  ],
                ),
                Text(
                  sign_up_texts[0],
                  style: GoogleFonts.abhayaLibre(
                    color: font_colors[0],
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                infield(0),
                SizedBox(
                  height: 30,
                ),
                infield(1),
                SizedBox(
                  height: 30,
                ),
                infield(2),
                SizedBox(
                  height: 30,
                ),
                infield(3),
                SizedBox(
                  height: 30,
                ),
                infield(4),
                SizedBox(
                  height: 30,
                ),
                infield(5),
                SizedBox(
                  height: 30,
                ),
                infield(6),
                SizedBox(
                  height: 30,
                ),
                infield(7),
                SizedBox(
                  height: 30,
                ),
                infield(8),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: sign_up_field[8],
                        style: TextStyle(
                          fontSize: 12,
                          color: font_colors[4],
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivacyPolicy(),
                              ),
                            );
                          },
                      ),
                    ),
                  ],
                ),
                NewCheckbox(), //체크박스 눌러야만 버튼 활성화됨.
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
