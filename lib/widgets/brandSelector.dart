import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_concept/utils/styles.dart';

class BrandSelector extends StatefulWidget {
  final List<String> brands;

  BrandSelector({@required this.brands});

  @override
  _BrandSelectorState createState() => _BrandSelectorState();
}

class _BrandSelectorState extends State<BrandSelector> {
  int _currentIndex = 0;
  bool _isSelected;

  List<Widget> _buildShoesBrands() {
    return widget.brands.map((brand) {
      var index = widget.brands.indexOf(brand);
      _isSelected = _currentIndex == index;
      return Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(75),
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Text(
            brand,
            style: AppStyle.brandHeading(_isSelected),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildShoesBrands(),
    );
  }
}
