import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var activeFilter = "earphones";
  @override
  Widget build(BuildContext context) {
    var filters = [
      {"key": 'earphones', "value": 'EarPhones'},
      {"key": 'speaker', "value": 'Speaker'},
      {"key": 'headbands', "value": 'Headbands'},
      {"key": 'earpods', "value": 'earpods'},
      {"key": 'airpods', "value": 'Airpods'},
    ];

    return Scaffold(
        appBar: AppBar(
          title: Image(
            image: AssetImage('assets/images/Logo.png'),
            height: 25,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png'),
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hi Jane Doe'),
                              Text(
                                'What are you looking for \ntoday?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextField(
                                style: TextStyle(height: 1),
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Color(0xffbababa)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.search,
                                        color: Color(0xffbababa)),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    hintText: 'Search headphones'),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ])),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0Xfff6f6f6),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20))),
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                    height: 40,
                                    // width: double.maxFinite,
                                    child: ListView.builder(
                                      itemCount: filters.length,
                                      scrollDirection: Axis.horizontal,
                                      physics: ClampingScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                            padding: EdgeInsets.only(
                                                right: 10,
                                                left: index == 0 ? 20 : 0),
                                            child: SizedBox(
                                                height: 20,
                                                child: TextButton(
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(activeFilter ==
                                                                      filters[index]
                                                                          [
                                                                          'key']
                                                                  ? Color(
                                                                      0xff0ACF83)
                                                                  : Colors
                                                                      .transparent),
                                                      shape: MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)))),
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      child: Text(
                                                        filters[index]['value'],
                                                        style: GoogleFonts.dmSans(
                                                            color: activeFilter ==
                                                                    filters[index]
                                                                        ['key']
                                                                ? Colors.white
                                                                : Color(
                                                                    0xff7f7f7f),
                                                            fontSize: 14.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      )),
                                                  onPressed: () {
                                                    setState(() {
                                                      activeFilter =
                                                          filters[index]['key'];
                                                    });
                                                    print(
                                                        filters[index]['key']);
                                                  },
                                                )));
                                      },
                                    )),
                                SizedBox(
                                  height: 25,
                                ),
                                CarouselSlider(
                                    options: CarouselOptions(
                                        height: 178,
                                        autoPlay: false,
                                        // aspectRatio: 2.0,
                                        enlargeCenterPage: false,
                                        // enableInfiniteScroll: false,
                                        viewportFraction: 0.9,
                                        disableCenter: false),
                                    items: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Container(
                                              width: double.maxFinite,
                                              padding: EdgeInsets.all(15),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: Row(children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        'TMA-2 Modular Headphone',
                                                        textAlign:
                                                            TextAlign.left,
                                                        textDirection:
                                                            TextDirection.ltr,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 22),
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Row(children: [
                                                            Text('Shop now',
                                                                style: GoogleFonts.dmSans(
                                                                    color: Color(
                                                                        0xff0ACF83),
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                            SizedBox(
                                                              width: 3,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward,
                                                              color: Color(
                                                                  0xff0ACF83),
                                                            )
                                                          ]))
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                    flex: 1,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/images/headphone.png'))),
                                              ]))),
                                    ]),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Featured Products',
                                          style: GoogleFonts.dmSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16)),
                                      TextButton(
                                          onPressed: () {
                                            print('see more');
                                          },
                                          child: Text(
                                            'See all',
                                            style: GoogleFonts.dmSans(
                                                color: Color(0xff7f7f7f),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 213,
                                  child: ListView.builder(
                                      itemCount: filters.length,
                                      scrollDirection: Axis.horizontal,
                                      physics: ClampingScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                            padding: EdgeInsets.only(
                                                right: 20,
                                                left: index == 0 ? 20 : 0),
                                            child: Container(
                                                // height: 213,
                                                padding: EdgeInsets.all(10),
                                                width: 155,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                          'assets/images/headphone.png',
                                                        ),
                                                        height: 125,
                                                        fit: BoxFit.contain),
                                                    Container(
                                                        width: double.maxFinite,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'TMA-2 HD Wireless',
                                                              style: GoogleFonts.dmSans(
                                                                  color: Color(
                                                                      0xff000000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 14),
                                                            ),
                                                            Text(
                                                              'USD 350',
                                                              style: GoogleFonts.dmSans(
                                                                  color: Color(
                                                                      0xff000000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 12),
                                                            ),
                                                          ],
                                                        ))
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Color(0Xffffffff),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)))));
                                      }),
                                ),
                                SizedBox(
                                  height: 50,
                                )
                              ])),
                    ),
                  ],
                ))));
  }
}
