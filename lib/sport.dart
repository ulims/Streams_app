import 'package:flutter/material.dart';
import 'package:streams/shared/constant.dart';
import 'package:streams/models/streams_card.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Sport extends StatefulWidget {
  const Sport({Key? key}) : super(key: key);

  @override
  State<Sport> createState() => _SportState();
}

class _SportState extends State<Sport> {
  int currentIndex = 0;
  late PageController _pageController;
  List<StreamCard> containers = <StreamCard>[
    const StreamCard(
        name: 'Manchester United vs Arsenal',
        desc: '85 mins remaining',
        asset: 'assets/images/screen 2.png'),
    const StreamCard(
        name: 'Manchester United vs Arsenal',
        desc: '85 mins remaining',
        asset: 'assets/images/screen 1.png'),
    const StreamCard(
        name: 'Manchester United vs Arsenal',
        desc: '85 mins remaining',
        asset: 'assets/images/screen 1.png'),
  ];
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //returning a tab controller and nesting it in the safearea and nesting the child in a scaffold
    return DefaultTabController(
      length: 2, //declared the length of the tabs
      child: SafeArea(
        child: Scaffold(
            backgroundColor: background,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(48),
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'Sport',
                  ),
                  Tab(
                    text: 'Movies',
                  ),
                ],
                //styled the tab in the Tabbar widget
                indicatorColor: textColor100,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: textColor40,
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'Euclid Circular A',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                labelColor: textColor100,
                labelStyle: TextStyle(
                    fontFamily: 'Euclid Circular A',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                indicatorWeight: 3.0,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: TabBarView(children: [
                PageView(
                  scrollDirection: Axis.vertical,
                  children: [
                    PageView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: containers.length,
                        controller: _pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        onPageChanged: (int index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: ((context, index) {
                          return Container(
                            height: 480,
                            width: 340,
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      containers[index].asset,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: IconButton(
                                    onPressed: () {
                                      _pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.decelerate,
                                      );
                                    },
                                    icon:
                                        Image.asset(('assets/images/play.png')),
                                    iconSize: 60,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: 80,
                                    width: 340,
                                    decoration: ShapeDecoration(
                                      color: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            containers[index].name,
                                            style: const TextStyle(
                                              color: background,
                                              fontFamily: 'Euclid Circular A',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              shadows: <Shadow>[
                                                Shadow(
                                                  color: textColor80,
                                                  blurRadius: 4,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            containers[index].desc,
                                            style: const TextStyle(
                                              fontFamily: 'Euclid Circular A',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: background,
                                              shadows: <Shadow>[
                                                Shadow(
                                                  color: textColor80,
                                                  blurRadius: 4,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),
                  ],
                ),
                const Icon(Icons.car_rental),
              ]),
            ),
            bottomNavigationBar:  GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(icon: Icons.home, text: 'Home',textStyle: TextStyle(
                  fontFamily: 'Euclid Circular A',
                  fontSize: 13,
                ),),
                 GButton(icon: Icons.search, text: 'Search',
                 textStyle: TextStyle(
                  fontFamily: 'Euclid Circular A',
                  fontSize: 13,)
                 ),
                  GButton(icon: Icons.notifications, text: 'Notifications',
                   textStyle: TextStyle(
                  fontFamily: 'Euclid Circular A',
                  fontSize: 13,)
                  ),
                   GButton(icon: Icons.person, text: 'Profile',
                    textStyle: TextStyle(
                  fontFamily: 'Euclid Circular A',
                  fontSize: 13,)
                   ),
              ],
            )),
      ),
    );
  }
}
