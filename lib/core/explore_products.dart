import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreProducts extends StatelessWidget {
  const ExploreProducts();

  @override
  Widget build(BuildContext context) {
    var filters = [
      {"key": 'filter', "value": 'Filter'},
      {"key": 'popular', "value": 'Popularity'},
      {"key": 'newest', "value": 'Newest'},
      {"key": 'oldest', "value": 'Oldest'},
      {"key": 'most expensive', "value": 'Most Expensive'},
      {"key": 'least expensive', "value": 'Least Expensive'},
      {"key": 'review', "value": 'Review'},
    ];

    var sortOptions = () {
      var a = [...filters];
      a.removeAt(0);
      return a;
    };
    return Scaffold(
      appBar: AppBar(
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
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Headphone',
                      style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text('TMA Wireless',
                        style: GoogleFonts.dmSans(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 41,
                        child: ListView.builder(
                            itemCount: filters.length,
                            scrollDirection: Axis.horizontal,
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0) {
                                return OutlinedButton.icon(
                                    onPressed: () {
                                      showModalBottomSheet<void>(
                                        backgroundColor: Colors.white,
                                        clipBehavior: Clip.antiAlias,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30.0),
                                              topRight: Radius.circular(30.0)),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            padding: EdgeInsets.all(20),
                                            height: 524,
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Filter',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 24)),
                                                    IconButton(
                                                        icon: Icon(
                                                          Icons.close,
                                                          color: Colors.black,
                                                        ),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        })
                                                  ],
                                                ),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      Text('Category',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: GoogleFonts
                                                              .dmSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      16)),
                                                      Container(
                                                          height: 35,
                                                          // color: Colors.red,
                                                          child:
                                                              ListView.builder(
                                                                  itemCount:
                                                                      filters
                                                                          .length,
                                                                  scrollDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                  physics:
                                                                      ClampingScrollPhysics(),
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          int index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            11,
                                                                        child: TextButton(
                                                                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(index == 0 ? Color(0xff0ACF83) : Colors.transparent), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
                                                                            onPressed: () {
                                                                              print('pressed');
                                                                            },
                                                                            child: Text(
                                                                              filters[index]['value'],
                                                                              style: GoogleFonts.dmSans(color: index == 0 ? Color(0xffffffff) : Colors.black, fontSize: 14),
                                                                            )));
                                                                  })),
                                                    ]),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Text('Sort By',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16)),
                                                    Wrap(
                                                        children: sortOptions()
                                                            .map((e) {
                                                      return Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 10,
                                                                  bottom: 0),
                                                          child: OutlinedButton(
                                                              style: ButtonStyle(
                                                                  shape: MaterialStateProperty.all(
                                                                      RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10)))),
                                                              onPressed: () {},
                                                              child: Text(
                                                                e['value'],
                                                                style: GoogleFonts.dmSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        14),
                                                              )));
                                                    }).toList())
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Text('Price Range',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16)),
                                                    SizedBox(
                                                        height: 50,
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                                child:
                                                                    TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintStyle: TextStyle(
                                                                          color: Color(
                                                                              0xffbababa)),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          width:
                                                                              0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                              borderSide:
                                                                                  BorderSide(
                                                                                width: 0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10)),
                                                                      hintText:
                                                                          'Enter a password'),
                                                            )),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Expanded(
                                                                child:
                                                                    TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintStyle: TextStyle(
                                                                          color: Color(
                                                                              0xffbababa)),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          width:
                                                                              0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                              borderSide:
                                                                                  BorderSide(
                                                                                width: 0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10)),
                                                                      hintText:
                                                                          'Enter a password'),
                                                            )),
                                                          ],
                                                        ))
                                                  ],
                                                ),
                                                SizedBox(
                                                    height: 50,
                                                    child: ElevatedButton(
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(Color(
                                                                      0xff0ACF83))),
                                                      child: const Text(
                                                          'Apply Filter'),
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              context),
                                                    ))
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    style: ButtonStyle(
                                        side: MaterialStateProperty.all(
                                            BorderSide(
                                                width: 1,
                                                color: Color(0xffbababa))),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20)))),
                                    label: Text(filters[index]['value'],
                                        style: GoogleFonts.dmSans(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    icon: Icon(
                                      Icons.filter_list_alt,
                                      color: Colors.black,
                                    ));
                              }
                              return TextButton(
                                  onPressed: () {},
                                  child: Text(filters[index]['value'],
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14)));
                            }))
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    clipBehavior: Clip.hardEdge,
                    child: GridView.count(
                        physics: ClampingScrollPhysics(),
                        crossAxisCount: 2,
                        padding: const EdgeInsets.all(20.0),
                        mainAxisSpacing: 13.0,
                        crossAxisSpacing: 15.0,
                        childAspectRatio: 0.660,
                        children: <String>[
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                          'https://images.unsplash.com/photo-1583394838336-acd977736f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
                        ].map((String url) {
                          return GridTile(
                              child: InkWell(
                                  onTap: () {
                                    print('tapped');
                                  },
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Image.network(
                                              url,
                                              fit: BoxFit.contain,
                                              height: 125,
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text('TMA-2 Comfort Wireless',
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                    fontSize: 14)),
                                            Text('USD 270',
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black,
                                                    fontSize: 12)),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black,
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text('86 Reviews',
                                                      style: GoogleFonts.dmSans(
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                        )),
                                  )));
                        }).toList())),
              )
            ],
          )),
    );
  }
}
