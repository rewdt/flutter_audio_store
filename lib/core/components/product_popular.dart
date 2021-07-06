import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct();

  @override
  Widget build(BuildContext context) {
    return                   
    Row()
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
                  )
  }
}