import 'package:apphh/Coler.dart';
import 'package:apphh/Slider.dart';
import 'package:apphh/dangnhap.dart';
import 'package:flutter/material.dart';

//class viewDangnhap extends StatefulWidget {
//  @override
//  _MainPgaeState createState() => _MainPgaeState();
//}
//
//class _MainPgaeState extends State<viewDangnhap> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.white,
//      body: Column(
//        children:<Widget> [
//          Container(
//            width: 270,
//            height: 500,
//            margin: EdgeInsets.only(left: 65, top: 20, right: 50),
//            decoration: BoxDecoration(
//                image: DecorationImage(
//                    image: AssetImage('assets/exam_vnedu.png'))),
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                "Sử dụng tài khoản",
//                style: TextStyle(
//                    height: 1.5,
//                    fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
//                textAlign: TextAlign.center,
//              ),
//              Text(
//                " vnEdu Connect",
//                style: TextStyle(
//                    fontSize: 13, color: Colors.blue, fontWeight: FontWeight.w600),
//                textAlign: TextAlign.center,
//              ),
//              Text(
//                  " để đăng"
//              )
//            ],
//          ),
//          Text(
//            "nhập nếu như bạn đã có từ trước",
//            style: TextStyle(
//                height: 1.5,
//                fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
//            textAlign: TextAlign.center,
//          ),
//          SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: [
//              InkWell(
//                onTap: openMainPage,
//                child: Container(
//                  width: 120,
//                  height: 44,
//                  margin: EdgeInsets.only(top: 15, left: 16),
//                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),
//                      color: Color(0xFFBB2634)),
//                  child: Text(
//                    'Tiếp theo',
//                    style: TextStyle(
//                      fontSize: 13,
//                      fontWeight: FontWeight.w600,
//                      color: Colors.white,
//                    ),
//                  ),
//                ),
//              )
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//
//  void openMainPage() {
//    Navigator.push(
//      context,
//      MaterialPageRoute(builder: (context) => Intruction()),
//    );
//  }
//}
//
//class Intruction extends StatefulWidget {
//  @override
//  _IntructionState createState() => _IntructionState();
//}
//
//class _IntructionState extends State<Intruction> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.white,
//      body: Column(
//        children: [
//          Container(
//            width: 270,
//            height: 500,
//            margin: EdgeInsets.only(left: 65, top: 20, right: 50),
//            decoration: BoxDecoration(
//                image: DecorationImage(
//                    image: AssetImage('assets/exam_normal.png'))),
//          ),
//          SizedBox(
//            height: 10,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                "Hoặc liên hệ với giáo viên phụ trách để được",
//                style: TextStyle(
//                    height: 1.5,
//                    fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
//                textAlign: TextAlign.center,
//              ),
//
//            ],
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text("để"),
//              Text(
//                " tài khoản",
//                style: TextStyle(
//                    height: 1.5,
//                    fontSize: 13, color: red, fontWeight: FontWeight.w600),
//                textAlign: TextAlign.center,
//              ),
//              Text(" và "),
//              Text(
//                "mật khẩu",
//                style: TextStyle(
//                    height: 1.5,
//                    fontSize: 13, color: red, fontWeight: FontWeight.w600),
//                textAlign: TextAlign.center,
//              )
//            ],
//          ),
//
//          SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: [
//              InkWell(
//                onTap: openMainPage,
//                child: Container(
//                  width: 120,
//                  height: 44,
//                  margin: EdgeInsets.only(top: 15, left: 16),
//                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 13),
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),
//                      color: Color(0xFFBB2634)),
//                  child: Text(
//                    'Đăng nhập',
//                    style: TextStyle(
//                      fontSize: 14,
//                      fontWeight: FontWeight.w600,
//                      color: Colors.white,
//                    ),
//                  ),
//                ),
//              )
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//
//  void openMainPage() {
//    Navigator.push(
//      context,
//      MaterialPageRoute(builder: (context) => Dangnhap()),
//    );
//  }
//}

class viewdangnhap extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<viewdangnhap> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 5.0,
      width: isCurrentPage ? 30 : 5,
      decoration: BoxDecoration(
        color: isCurrentPage ? red : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SlideTile(
                      imagePath: mySLides[0].getImageAssetPath(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Sử dụng tài khoản",
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " vnEdu Connect",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        Text(" để đăng")
                      ],
                    ),
                    Text(
                      "nhập nếu như bạn đã có từ trước",
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SlideTile(
                      imagePath: mySLides[1].getImageAssetPath(),
                    ),
                    const Text.rich(
                      TextSpan(
                        text:
                            'Hoặc liên hệ với giáo viên phụ trách để được \n\t\t\t\t\t\t\t\t\t\t\t\t cấp',
                        children: <TextSpan>[
                          TextSpan(
                              text: ' tài khoản ',
                              style: TextStyle(height: 1.5, color: Colors.red)),
                          TextSpan(text: ' và '),
                          TextSpan(
                              text: ' mật khẩu',
                              style: TextStyle(height: 1.5, color: Colors.red)),
                        ],
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                slideIndex != 1
                    ? Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                controller.animateToPage(2,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Color(0xFFBB2634))),
                              color: Color(0xFFBB2634),
                              child: Text(
                                "Tiếp tục",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  for (int i = 0; i < 2; i++)
                                    i == slideIndex
                                        ? _buildPageIndicator(true)
                                        : _buildPageIndicator(false),
                                ],
                              ),
                            ),
                          ],
                        ))
                    : Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dangnhap()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Color(0xFFBB2634))),
                              color: Color(0xFFBB2634),
                              child: Text(
                                "Đăng nhập",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width * 0.55,
                                  0,
                                  0,
                                  0),
                              child: Row(
                                children: [
                                  for (int i = 0; i < 2; i++)
                                    i == slideIndex
                                        ? _buildPageIndicator(true)
                                        : _buildPageIndicator(false),
                                ],
                              ),
                            ),
                          ],
                        ),),
              ],
            ),
          ),
        ),);
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, desc;

  SlideTile({this.imagePath, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
