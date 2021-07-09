import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreProducts extends StatelessWidget {
  const ExploreProducts();

  @override
  Widget build(BuildContext context) {
    var filters = [
      {"key": 'filter', "value": 'Filter'},
      {"key": 'popular', "value": 'Popular'},
      {"key": 'newest', "value": 'Newest'},
      {"key": 'most expensive', "value": 'Most Expensive'},
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {},
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
                                                    Text(
                                                      'Filter',
                                                    ),
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
                                                      Text(
                                                        'Category',
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      Container(
                                                          height: 30,
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
                                                                              'Lorem ipsum',
                                                                              style: GoogleFonts.dmSans(color: index == 0 ? Color(0xffffffff) : Colors.black, fontSize: 14),
                                                                            )));
                                                                  }))
                                                    ]),
                                                // Column(children: [
                                                //   Text('Sort By'),
                                                //   Row(
                                                //     ['ade', 'nuhu', 'jibril'].map((e) {
                                                //       return TextButton(onPressed: onPressed, child: Text('e'))
                                                //     })
                                                //   )
                                                // ],),
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
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                          'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                        ].map((String url) {
                          return GridTile(
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
                                          MainAxisAlignment.spaceBetween,
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
                                )),
                          ));
                        }).toList())),
              )
            ],
          )),
    );
  }
}
