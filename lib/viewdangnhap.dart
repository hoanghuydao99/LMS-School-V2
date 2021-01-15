import 'package:apphh/Coler.dart';
import 'package:apphh/dangnhap.dart';
import 'package:flutter/material.dart';

class viewDangnhap extends StatefulWidget {
  @override
  _MainPgaeState createState() => _MainPgaeState();
}

class _MainPgaeState extends State<viewDangnhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:<Widget> [
          Container(
            width: 270,
            height: 500,
            margin: EdgeInsets.only(left: 65, top: 20, right: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/exam_vnedu.png'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sử dụng tài khoản",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                " vnEdu Connect",
                style: TextStyle(
                    fontSize: 13, color: Colors.blue, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                  " để đăng"
              )
            ],
          ),
          Text(
            "nhập nếu như bạn đã có từ trước",
            style: TextStyle(
                height: 1.5,
                fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: openMainPage,
                child: Container(
                  width: 120,
                  height: 44,
                  margin: EdgeInsets.only(top: 15, left: 16),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFBB2634)),
                  child: Text(
                    'Tiếp theo',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void openMainPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Intruction()),
    );
  }
}

class Intruction extends StatefulWidget {
  @override
  _IntructionState createState() => _IntructionState();
}

class _IntructionState extends State<Intruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 270,
            height: 500,
            margin: EdgeInsets.only(left: 65, top: 20, right: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/exam_normal.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hoặc liên hệ với giáo viên phụ trách để được",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("để"),
              Text(
                " tài khoản",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 13, color: red, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(" và "),
              Text(
                "mật khẩu",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 13, color: red, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              )
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: openMainPage,
                child: Container(
                  width: 120,
                  height: 44,
                  margin: EdgeInsets.only(top: 15, left: 16),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 13),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFBB2634)),
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void openMainPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dangnhap()),
    );
  }
}