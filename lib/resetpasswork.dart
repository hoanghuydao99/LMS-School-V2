import 'package:apphh/Coler.dart';
import 'package:apphh/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resetpassword extends StatefulWidget {
  @override
  _resetpasswordState createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Khôi phục mật khẩu",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
//             mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Vui lòng nhập email của bạn để tiến hành khôi",
                  style: TextStyle(
                    fontSize: 13,
//                   fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "phục mật khẩu:",
                  style: TextStyle(
                    fontSize: 13,
//                   fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: TextField(
                style: TextStyle(fontSize: 18, color: red),
                decoration: InputDecoration(
                  //đổi màu viền dưới của TextField
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: red),
                  ),
                  hintText: "example@mail.com",
                  hintStyle: TextStyle(color: red),
                  prefixIcon: Icon(Icons.person_outline, color: red),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _openemail,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: red),
                    child: Text(
                      'Gửi email',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _openemail() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => openemail()),
    );
  }
}

class openemail extends StatefulWidget {
  @override
  _openemailState createState() => _openemailState();
}

class _openemailState extends State<openemail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Container(
        width: size.width * 0.9,
        margin:
            EdgeInsets.fromLTRB(size.width * 0.05, 30, size.width * 0.05, 0),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFE4E0)),
              child: Icon(
                Icons.email_outlined,
                size: 60,
                color: Color(0xffBB2634),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Kiểm tra hòm thư",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "của bạn",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Chúng tôi đã gửi hướng dẫn thay đổi mật khẩu",
                  style: TextStyle(
                    fontSize: 13,
//                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "vào email của bạn.",
                  style: TextStyle(
                    fontSize: 13,
//                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _updatepassword,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: red),
                    child: Text(
                      'Gửi lại',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Thử lại sau",
                  style: TextStyle(
                    fontSize: 13,
//                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Không nhận được email? Kiểm tra hòm thư spams",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "của bạn hoặc ",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        Text(
                          "Thử lại với một email khác",
                          style: TextStyle(fontSize: 13, color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updatepassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => updatepassword()),
    );
  }
}

class updatepassword extends StatefulWidget {
  @override
  _updatepasswordState createState() => _updatepasswordState();
}

class _updatepasswordState extends State<updatepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Cập nhập mật khẩu",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Mật khẩu mới của bạn cần khác so với mật khẩu",
                  style: TextStyle(
                    fontSize: 13,
//                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Text(
                  "cũ",
                  style: TextStyle(
                    fontSize: 13,
//                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: TextField(
                style: TextStyle(fontSize: 18, color: red),
                decoration: InputDecoration(
                  //đổi màu viền dưới của TextField
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: red),
                  ),
                  hintText: "Mật khẩu mới",
//                  hintStyle: TextStyle(color: red),
                  prefixIcon: Icon(Icons.https),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: TextField(
                style: TextStyle(fontSize: 18, color: red),
                obscureText: true,
                decoration: InputDecoration(
                  //đổi màu viền dưới của TextField
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  hintText: "Nhập lại mật khẩu",
                  prefixIcon: Icon(Icons.https),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Mật khảu phải trùng khớp",
                  style: TextStyle(
                    fontSize: 13,
//                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: passwordthanhcong,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: red),
                    child: Text(
                      'Cập nhập',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void passwordthanhcong() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => updatethanhcong()),
    );
  }
}

class updatethanhcong extends StatefulWidget {
  @override
  _updatethanhcongState createState() => _updatethanhcongState();
}

class _updatethanhcongState extends State<updatethanhcong> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Container(
        width: size.width * 0.9,
        margin:
        EdgeInsets.fromLTRB(size.width * 0.05, 30, size.width * 0.05, 0),
        child: Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFE4E0)),
              child: Icon(
                Icons.https,
                size: 60,
                color: Color(0xffBB2634),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Cập nhập mật khẩu",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "thành công",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: dangnhaptc,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: red),
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  void dangnhaptc() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }
}
