import 'package:apphh/Coler.dart';
import 'package:apphh/homepage.dart';
import 'package:apphh/resetpasswork.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dangnhap extends StatefulWidget {
  @override
  _DangnhapState createState() => _DangnhapState();
}

class _DangnhapState extends State<Dangnhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //chia khoang cach  = 0
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Đăng nhập",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 270,
              height: 200,
              margin: EdgeInsets.only(left: 75, top: 20, right: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/dangnhap.png'))),
            ),
            Container(
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                onPressed: () {},
                child: Image(
                  image: AssetImage('assets/Group10.png'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("hoặc sử dụng tài khoản được cấp"),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 20),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                          child: TextField(
                            style: TextStyle(fontSize: 18, color: red),
                            decoration: InputDecoration(
                              //đổi màu viền dưới của TextField
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: red),
                              ),
                              hintText: "example@mail.com",
                              hintStyle: TextStyle(color: red),
                              prefixIcon:
                                  Icon(Icons.person_outline, color: red),
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
                              hintText: "Mật khẩu",
                              prefixIcon: Icon(Icons.https),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: showDialogTruong,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 160, vertical: 20),
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: reset,
                  child: Container(
                    margin: EdgeInsets.only(top: 15, left: 35, right: 15),
                    child: Text(
                      'Quên mật khẩu tài khoản được cấp?',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: red,
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

  void showDialogTruong() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            title: Row(
              children: <Widget>[
                Text('Chọn trường học',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.fromLTRB(size.width * 0.2, 0, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                ),
              ],
            ),
            content: Container(
              width: size.width * 0.7,
              height: 300,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      InkWell(
                      onTap: openrestpassword,
                        child: Container(
                            padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
                            width: size.width * 0.68,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      'THPT Nguyễn Thiện Thuật',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      'hoanghuydao99@gmail.com',
                                      style:
                                          TextStyle(color: Color(0xffBB2634)),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      InkWell(
                      onTap: openrestpassword,
                        child: Container(
                            padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
                            width: size.width * 0.68,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      'THPT Nguyễn Thiện Thuật',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      'hoanghuydao99@gmail.com',
                                      style:
                                          TextStyle(color: Color(0xffBB2634)),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(
                      onTap: openrestpassword,
                        child: Container(
                            padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
                            width: size.width * 0.68,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      'THPT Nguyễn Thiện Thuật',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      'hoanghuydao99@gmail.com',
                                      style:
                                          TextStyle(color: Color(0xffBB2634)),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
  void openrestpassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }
  void reset() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => resetpassword()),
    );
  }
}
