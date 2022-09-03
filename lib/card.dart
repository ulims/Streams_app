import 'package:flutter/material.dart';
import 'package:streams/models/streams_card.dart';
import 'shared/constant.dart';

class Carded extends StatefulWidget {
  const Carded(Future<void> nextPage, {Key? key}) : super(key: key);

  @override
  State<Carded> createState() => _CardState();
}

class _CardState extends State<Carded> {
  int currentIndex = 0;
  late PageController _pageController;
  List<StreamCard> containers = <StreamCard>[
    const StreamCard(
        name: 'Manchester United vs Arsenal',
        desc: '85 mins remaining',
        asset: 'assets/images/screen 1.png'),
    const StreamCard(
        name: 'Liverpool vs Arsenal',
        desc: '85 mins remaining',
        asset: 'assets/images/onboard 1.png'),
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
    return PageView.builder(
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
                    },
                    icon: Image.asset(('assets/images/play.png')),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
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
        }));
  }
}
