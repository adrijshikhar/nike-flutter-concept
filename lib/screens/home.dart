import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/profileCipper.dart';
import '../utils/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 1125,
      height: 2436,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(100),
                left: ScreenUtil().setHeight(40),
                bottom: ScreenUtil().setHeight(40),
                right: ScreenUtil().setHeight(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  ClipOval(
                    clipper: ProfileClipper(),
                    child: Image.asset(
                      'assets/images/portrait.jpeg',
                      width: ScreenUtil().setWidth(120),
                      height: ScreenUtil().setHeight(120),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(60),
                left: ScreenUtil().setWidth(70),
                bottom: ScreenUtil().setHeight(105),
              ),
              child: Text(
                "Explore",
                style: AppStyle.headingText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
