import 'package:flutter/material.dart';
import 'package:footwearclub/buyer/view/widget/popular_product.dart';
import 'package:footwearclub/buyer/view/widget/special_offers.dart';
import 'package:footwearclub/constants/constant.dart';
import 'package:footwearclub/splashscreen/splashdata.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 16),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: kSecondaryColor.withOpacity(0.2)
                      // boxShadow: const BoxShadow(offset: Offset(0.5, 0.5),),
                      ),
                  child: Center(
                    child: Icon(
                      Icons.sort,
                      size: 35,
                      color: kSecondaryColor ,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 8),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: kSecondaryColor.withOpacity(0.2)
                      // boxShadow: const BoxShadow(offset: Offset(0.5, 0.5),),
                      ),
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Our",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(30),
                  color: Colors.black.withOpacity(0.6),
                  // fontWeight: FontWeight.bold,
                  fontFamily: "Muli"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Product",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(30),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Muli"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              // margin: AppTheme.padding,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Products",
                            hintStyle: TextStyle(fontSize: 12),
                            contentPadding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 0, top: 5),
                            prefixIcon:
                                Icon(Icons.search, color: Colors.black54)),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  _icon(Icons.filter_list, color: Colors.black54)
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          SizedBox(height: getProportionateScreenWidth(10)),
          SpecialOffers(),
          SizedBox(height: getProportionateScreenWidth(20)),
          PopularProducts(),
          SizedBox(height: getProportionateScreenWidth(20)),
        ],
      ),
    );
  }
}

Widget _icon(IconData icon, {Color color = kPrimaryLightColor}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: kSecondaryColor.withOpacity(0.1)
          // boxShadow: const BoxShadow(offset: Offset(0.5, 0.5),),
          ),
      child: Icon(
        icon,
        color: color,
      ),
    ),
  );
}
