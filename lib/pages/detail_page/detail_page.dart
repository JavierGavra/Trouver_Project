import 'package:flutter/material.dart';
import 'package:trouver_project/custom_widget.dart';
import 'package:trouver_project/pages/detail_page/tab_about_movie.dart';
import 'package:trouver_project/pages/detail_page/tab_reviews.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  List _list = [
    'Action',
    'Advanture',
    'Animation',
    'Thriler',
    'Horor',
    'Musik'
  ];
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Head Detail
              Container(
                height: 283,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Image.asset(
                      'assets/image/detail_banner.png',
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color.fromARGB(0, 46, 53, 58),
                            Color.fromARGB(0, 46, 53, 58),
                            Color(0xff242A32),
                          ])),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 53,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/image/detail_cover.png',
                                height: 120,
                                width: 95,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              padding: EdgeInsets.only(bottom: 10),
                              // color: Colors.amberAccent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Spiderman No Way Home",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "スパイダーマン家に帰る方法がない",
                                    style: TextStyle(
                                      color: Color(0xffE1E1E1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Genres view
              SizedBox(
                height: 31,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: _list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: GenreViewWidget(text: _list[index]),
                    );
                    // return Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 11),
                    //   child: Chip(
                    //     label: Text(_list[index]),
                    //     labelStyle:
                    //         TextStyle(fontSize: 12, color: Color(0xffeeeeee)),
                    //     labelPadding:
                    //         EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    //     backgroundColor: Color(0xff3A3F47),
                    //   ),
                    // );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Body Detail
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 33,
                width: 200,
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 0),
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Color(0xffA8A8A8),
                  indicatorColor: Color(0xffFA6218),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      text: 'About Movie',
                    ),
                    Tab(
                      text: 'Reviews',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    TabAbout(),
                    TabReviews(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xffF2E5D7)),
        child: Icon(
          Icons.bookmark_border,
          size: 28,
          color: Color(0xff3A3F47),
        ),
      ),
    );
  }
}
