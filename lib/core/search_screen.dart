import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Search',
            style: GoogleFonts.dmSans(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    onEditingComplete: () {
                      Navigator.pushNamed(context, '/explore');
                    },
                    style: TextStyle(height: 1),
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Color(0xffbababa)),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon:
                            Icon(Icons.search, color: Color(0xffbababa)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Search headphones'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Latest Search',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: InkWell(
                          onTap: () {
                            print('tapped');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xffbababa),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'TMA-2 COMFORT WIRELESS',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                )
                              ]),
                              Icon(
                                Icons.close,
                                color: Colors.black,
                              )
                            ],
                          ))),
                  Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: InkWell(
                          onTap: () {
                            print('tapped');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xffbababa),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'TMA-2 COMFORT WIRELESS',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
                                )
                              ]),
                              Icon(
                                Icons.close,
                                color: Colors.black,
                              )
                            ],
                          ))),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Popular product',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Color(0Xfff6f6f6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Image(
                                height: 55,
                                width: 55,
                                image:
                                    AssetImage("assets/images/headphone.png"),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('TMA-2 Comfort Wireless',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 16)),
                          Text('USD 270',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 14)),
                          // SizedBox(
                          //   height: 11,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.star,
                                  size: 13,
                                  color: Color(0xffffc120),
                                ),
                                Text(
                                  '4.6',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
                                SizedBox(width: 10),
                                Text('86 Reviews',
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 12)),
                              ]),
                              IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff7f7f7f),
                                  size: 20,
                                ),
                                onPressed: () {},
                              )
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                  // SizedBox(
                  //   height: 1000,
                  // ),
                  // Text('Latest Search'),
                ],
              ),
            )));
  }
}
