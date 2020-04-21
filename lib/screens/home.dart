import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/profileCipper.dart';
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
                top: ScreenUtil().setHeight(80),
                left: ScreenUtil().setHeight(40),
                bottom: ScreenUtil().setHeight(40),
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
                      width: ScreenUtil().setWidth(160),
                      height: ScreenUtil().setHeight(160),
                      fit: BoxFit.cover,
                      
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
