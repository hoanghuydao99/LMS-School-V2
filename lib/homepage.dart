import 'package:apphh/Coler.dart';
import 'package:apphh/date.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(35, 50, 35, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Column(
                          children: <Widget>[
                            Container(
                              width: 146,
                              child: Text(
                                "Xin chào,",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 146,
                              child: Text(
                                "Huy Hoàng",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerEnd,
                          child: IconButton(
                            icon: Icon(Icons.notifications),
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/hoang0.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image(
                      image: AssetImage('assets/huhu.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                width: size.width * 0.9,
                height: 230,
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: lichhoc,
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffFFE4E0)),
                            child: Icon(Icons.date_range,
                                size: 30, color: Color(0xffBB2634)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Lịch học tập',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xfff3e5f5)),
                            child: Icon(Icons.cast_for_education,
                                size: 30, color: Color(0xffC32C6D)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Khóa học của tôi',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xfff3e5f5)),
                            child: Icon(
                              Icons.lightbulb_outline,
                              size: 30,
                              color: Color(0xff833B78),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Cuộc thi của tôi',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff000000)),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffd7ccc8)),
                            child: Icon(Icons.subtitles_outlined,
                                size: 30, color: Color(0xff57477D)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Tin tức',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffcfd8dc)),
                            child: Icon(Icons.stars_outlined,
                                size: 30, color: Color(0xff2F4858)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Sự kiện',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: size.width * 0.8,
                child: Text(
                  "Đang học",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 160,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: size.width * 0.9,
                      margin: EdgeInsets.fromLTRB(size.width * 0.05, 10, 0, 0),
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey[100],
                              width: 10)),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: size.width * 0.38,
                              child: Image(
                                image: AssetImage('assets/image3.png'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  size.width * 0.02, 5, 0, 15),
                              width: size.width * 0.4,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment:
                                          AlignmentDirectional.bottomStart,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Môn hóa',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffBB2634)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: size.width * 0.9,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey[100],
                              width: 10)),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: size.width * 0.38,
                              child: Image(
                                image: AssetImage('assets/image.png'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              width: size.width * 0.4,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment:
                                          AlignmentDirectional.bottomStart,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Môn hóa',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffBB2634)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: size.width * 0.8,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Khóa học mới nhất",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 141,
                    ),
                    Text(
                      "Tất cả",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: size.width * 0.9,
                height: 265,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.7,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey[100],
                              width: 10)),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                        child: Column(
                          children: <Widget>[
                            Container(
//                              height: 120,
//                              width: 252,
                              child: Image(
                                image: AssetImage('assets/image.png'),
                              ),
                            ),
                            Container(
//                              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              width: size.width * 1,
//                              height: 20,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: AlignmentDirectional.bottomStart,
                                    child: Text(
                                      'Môn hóa',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffBB2634)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10,
                                                            vertical: 1),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20)),
                                                        color: red),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Icon(
                                                          Icons.alarm_on,
                                                          color: Colors.white,
                                                          size: 22,
                                                        ),
                                                        Text(
                                                          '1:40 hr',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.7,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey[100],
                              width: 10)),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                        child: Column(
                          children: <Widget>[
                            Container(
//                              height: 120,
//                              width: 252,
                              child: Image(
                                image: AssetImage('assets/image.png'),
                              ),
                            ),
                            Container(
//                              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              width: size.width * 1,
//                              height: 20,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: AlignmentDirectional.bottomStart,
                                    child: Text(
                                      'Môn hóa',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffBB2634)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10,
                                                            vertical: 1),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20)),
                                                        color: red),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Icon(
                                                          Icons.alarm_on,
                                                          color: Colors.white,
                                                          size: 22,
                                                        ),
                                                        Text(
                                                          '1:40 hr',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.7,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.grey[100],
                              width: 10)),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                        child: Column(
                          children: <Widget>[
                            Container(
//                              height: 120,
//                              width: 252,
                              child: Image(
                                image: AssetImage('assets/image.png'),
                              ),
                            ),
                            Container(
//                              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              width: size.width * 1,
//                              height: 20,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: AlignmentDirectional.bottomStart,
                                    child: Text(
                                      'Môn hóa',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffBB2634)),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10,
                                                            vertical: 1),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20)),
                                                        color: red),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Icon(
                                                          Icons.alarm_on,
                                                          color: Colors.white,
                                                          size: 22,
                                                        ),
                                                        Text(
                                                          '1:40 hr',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: size.width * 0.8,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Bảng tin",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
//              SizedBox(
//                height: 1,
//              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    size.width * 0.05, 10, size.width * 0.05, 20),
                child: Column(
                  children: <Widget>[
//                    Row(
//                      children: <Widget>[
//                        Text(
//                          'Bảng tin',
//                          style: TextStyle(
//                              fontSize: 20, fontWeight: FontWeight.bold),
//                        ),
//                      ],
//                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFFE4E0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffE04A4F),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '24/01',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'năm 2021',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              )),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              child: Text(
                                'Sửa tập huấn giáo viên theo chương trình mới bằng trực tuyến',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffBB2634),
                                    height: 1.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFFE4E0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffE04A4F),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '24/01',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'năm 2021',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              )),
                          SizedBox(width: 10),
                          Expanded(
                              child: Container(
                            child: Text(
                              'Sửa tập huấn giáo viên theo chương trình mới bằng trực tuyến',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffBB2634),
                                  height: 1.5),
                            ),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFFE4E0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffE04A4F),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '24/01',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'năm 2021',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              )),
                          SizedBox(width: 10),
                          Expanded(
                              child: Container(
                            child: Text(
                              'Sửa tập huấn giáo viên theo chương trình mới bằng trực tuyến',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffBB2634),
                                  height: 1.5),
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFFE4E0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffE04A4F),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '24/01',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'năm 2021',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              )),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              child: Text(
                                'Sửa tập huấn giáo viên theo chương trình mới bằng trực tuyến',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffBB2634),
                                    height: 1.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_for_education_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Home",
          )
        ],
      ),
    );
  }

  void lichhoc() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => datetime()),
    );
  }
}
