import 'package:flutter/material.dart';
import 'package:untitled1/screen/create_account.dart';

List<String> onboarding_images = ['assets/sergun.png', 'assets/doctor.png'];

List<String> intro_texts = [
  '소중한 당신의 귀건강 주치의,\n오블리주 입니다.',
  '실시간 청력상태 및 복지정보를\n확인하세요.',
];

List<String> intro_titles = [
  'Smart Hearing Agent',
  'The Power Of Ai Agent \nIn Your Pocket',
];

List<String> sign_titles = [
  'Lets Get Started',
];

List<String> sign_texts = [
  'Find the right EarHealth System  in myticket',
  'Already Have an Account? ',
  'Log In',
];

List<String> sns_login_texts = [
  'Sign With kakaotalk',
  'Sign With Naver',
  'Sign With Google',
  'Sign With Apple',
  '처음 가입하기',
  '로그인'
];

List<String> sign_up_texts = [
  "Create an Account",
  "Forgot Password?",
];

List<String> sns_logos = [
  'assets/kakaotalk_icon.png',
  'assets/naver_icon.png',
  'assets/google_icon.png',
  'assets/apple_icon.png',
  'assets/kakaotalk_icon.png'
];

List<String> login_titles = [
  'Hello Again!',
];

List<String> login_texts = [
  'Welcome Back You’ve been missed',
  'Forgot Password?',
  'Or',
  'Dont Have Account? ',
  'Sign Up',
];

List<String> login_field = [
  '이메일 주소',
  '비밀번호',
];

List<String> sign_up_field = [
  '이름',
  '생년월일',
  '휴대전화번호',
  '집주소',
  '성별 (남성, 여성)',
  '학력',
  '수입',
  '직업',
  '이메일 주소',
  '비밀번호',
  '비밀번호 확인',
  '회원가입',
  '개인정보 처리방침'
];
List<String> login_success_text = [
  '성공적으로\n회원가입 되었습니다.',
  '축하합니다, 귀하의 계정이 \n본 애플리케이션에 등록되었습니다.',
  '회원가입에\n실패했습니다.',
  '귀하의 계정이 본 애플리케이션에\n등록되지 않았습니다. 다시 가입 해주세요.',
];
List<String> login_success_button = [
  '가입완료',
  '다시 가입하기',
];

List<Color> background_color = [
  Color(0xFF000000),
];

List<Color> font_colors = [
  Color(0xFFFFFFFF),
  Color(0xFFBEC0C7),
  Color(0x80FFFFFF),
  Color(0xFF777B8A),
  Color(0xFF324EFF),
  Color(0xFF959DAE),
];
List<Color> ui_colors = [
  Color(0xFF6223BA),
  Color(0xFFAAB6FF),
  Color(0xFF22252B),
  Color(0xFF541CAE),
  Color(0xFF9D41EB),
  Color(0xff29374F),
  Color(0xFF000000),
  Color(0xFF959DAE),
];

List<Widget> icons = [
  Image.asset('profile.png'),
  Icon(Icons.calendar_month_outlined),
  Icon(Icons.phone_android),
  Icon(Icons.home),
  Image.asset('gender.png'),
  Icon(Icons.cast_for_education_outlined),
  Icon(Icons.monetization_on),
  Image.asset('job.png'),
  Icon(Icons.mail_outline_outlined),
  Icon(Icons.lock),
  Icon(Icons.lock),
];

List<Widget> sign_sns = [
  CreateAccount(),
  CreateAccount(),
  CreateAccount(),
  CreateAccount(),
];//각 sns에 맞는 화면으로
